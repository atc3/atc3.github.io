---
layout: post
title: Row Reordering in DataTables/Shiny
date: '2019-04-09'
categories:
- code
tags:
- guide
- R
- shiny
comments: true
---

[Row reordering](https://datatables.net/extensions/rowreorder/) is a cool extension to the [DataTables](https://datatables.net/) library, which is packaged to R/Shiny through the [DT Package](https://rstudio.github.io/DT/). Unlike other table actions like row selecting, reordering doesn't have functionality built in so it takes a little more effort to get it working.

First, we have to enable the extension by passing a few flags to the ```renderDataTable``` call. Since Shiny doesn't have a JS --> R hook built-in for the [row-reorder event](https://datatables.net/reference/event/row-reorder), we have to make it manually, with some custom javascript code.

```R
## server.R

# example data
get_table <- reactive({
    data.frame(
        A=LETTERS[1:10]
        B=rnorm(10)
    )
})

output$table <- DT::renderDataTable({
    get_table()
}, extensions='RowReorder', options=list(rowReorder=T), callback=JS(
    "// pass on data to R
    table.on('row-reorder', function(e, details, changes) {
        Shiny.onInputChange('table_row_reorder', JSON.stringify(details));
    });"
))

## ui.R
DT::dataTableOutput('table')
```

Now, when we reorder the rows in our table, we will catch this event in our javascript and pass back the details of the reorder event via. the shiny event ```table_row_reorder```. To change the underlying order of the table from this event, we first need to listen to the ```table_row_reorder``` event in the server.

```R
# store the order of the table as a reactive value that we
# can set and also listen for changes
table_order <- reactiveVal(value=seq(1,10))

# observe row reordering event - sent from javascript function
observeEvent(input$table_row_reorder, {
    info <- input$table_row_reorder
    # error checking
    if(is.null(info) | class(info) != 'character') { return() }

    # I'm using the "yaml" package to read JSON, but you can use "jsonlite" 
    # if you want. just be aware that jsonlite also uses the "validate" 
    # function which conflicts with the same "validate" function in shiny.
    info <- read_yaml(text=info)
    # info will be empty if a reorder event fired but no row orders changed
    if(length(info) == 0) { return() }

    # load our order vectors
    .order <- table_order()
    .new_order <- .order

    # for each updated row in the info object, update the order vector
    for(i in 1:length(info)) {
        j <- info[[i]]
        .new_order[(j$newPosition + 1)] <- .order[(j$oldPosition + 1)]
    }

    # update our order vector's reactive value
    table_order(.new_order)
})
```

Here's a slightly more complex version in action, inside [DO-MS](https://github.com/SlavovLab/DO-MS):

![](/images/reorder_demo.gif)

## Bugs, Glitches

- The left row-number column doesn't change when reordering, but you could create your own "original order" column to let the user keep track of the original order
- There are some visual glitches/flashes when the table is updating. I understand that this can be fixed by modifying the underlying datatables instance directly with a ```dataTableProxy()``` object ([as described here](https://rstudio.github.io/DT/shiny.html)), but I've had some issues with it and can't get it to work
