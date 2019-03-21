---
number: 2
title: DART-ID
id: dart-id
permalink: "/projects/dart-id"
banner_img: "/images/dart_banner.png"
title: "DART-ID Increases Single Cell Proteome Coverage"
box_title: "[Slavov Lab] DART-ID"
box_desc: "Increasing proteome coverage of LC-MS/MS runs with retention time alignment"
---

DART-ID is a computational method which can increase the coverage of LC-MS/MS proteomics experiments -- specifically those relying on MS2-based quantitation (i.e., isobaric tag labeling, TMT). It uses inferred and observed peptide retention time (RT) to update the peptide identification confidence, and usually results in up to 50% more peptides observed at 1% FDR.

  - Read the preprint on BioRxiv: [https://www.biorxiv.org/content/10.1101/399121v2](https://www.biorxiv.org/content/10.1101/399121v2).
  - Check out the ```dart_id``` tool: [https://github.com/SlavovLab/DART-ID](https://github.com/SlavovLab/DART-ID)
  - Check out the scripts for analysis and figure generation: [https://github.com/SlavovLab/DART-ID_2018](https://github.com/SlavovLab/DART-ID_2018)

The paper is currently under review at [PLOS Computational Biology](https://journals.plos.org/ploscompbiol/). 

In addition to [the accompanying posters](/design/2018/11/23/dart-id-posters), [this Twitter thread](https://twitter.com/atchen_/status/1102871543389016064) is a good introduction to the project:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Welcome to my twitter poster! DART-ID leverages retention time reproducibility to increase proteome coverage in LC-MS/MS experiments. Feel free to comment/ask questions<br><br>Special thanks to <a href="https://twitter.com/slavovLab?ref_src=twsrc%5Etfw">@slavovLab</a> <a href="https://twitter.com/afranks53?ref_src=twsrc%5Etfw">@afranks53</a> <a href="https://twitter.com/NUBioE1?ref_src=twsrc%5Etfw">@NUBioE1</a> <a href="https://twitter.com/hashtag/RSCPoster?src=hash&amp;ref_src=twsrc%5Etfw">#RSCPoster</a> <a href="https://twitter.com/hashtag/RSCAnalytical?src=hash&amp;ref_src=twsrc%5Etfw">#RSCAnalytical</a> <a href="https://t.co/N0pOFxs7K1">pic.twitter.com/N0pOFxs7K1</a></p>&mdash; Albert Chen (@atchen_) <a href="https://twitter.com/atchen_/status/1102871543389016064?ref_src=twsrc%5Etfw">March 5, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

## Involvement

As first author, I lead the development of most of the project shortly after its conception. Working with my collaborator [Alex Franks](http://afranks.com) from [UCSB](http://www.pstat.ucsb.edu/), I first explored various iterations of the method on our SCOPE-MS method development data. The first version of DART-ID used pairwise alignment between experiments, and chose a reference experiment based on a couple of heuristics. Alex implemented a global alignment method in the [Stan modeling language](https://mc-stan.org/) that greatly improved our performance and we iterated on that method from then on out.


After tweaking our RT alignment model to a good place, I decided to port the DART-ID tool from ```R``` to ```python``` to increase its usability and speed. (the ```R``` version in the [DART-ID_2018 repo](https://github.com/SlavovLab/DART-ID_2018) is still functional but it lacks some key features). 


I wrote the original drafts of the manuscript, conducted  the analyses, and created the figures/visualizations shown in the paper. I also lead the work of responding to our first round of reviews. Hopefully PLOS will start publishing these reviews openly...


Of course -- thanks to my co-authors Alex Franks and Nikolai Slavov, as well as members of the [Slavov Lab](https://web.northeastern.edu/slavovlab) for their input and feedback. It truly would not have been possible without their help.

