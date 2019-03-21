---
number: 7
title: JOMI
id: jomi
permalink: "/projects/jomi"
banner_img: "/images/jomi_banner.png"
title: "Journal of Medical Insight (jomi.com)"
box_title: "Journal of Medical Insight"
box_desc: "Surgical video journal website and CMS - Node.js, ReactJS, MongoDB"
---

**BLOOD, GORE WARNING:** Don't scroll down, or click on the links, if you don't want to see surguries!!!

**High-quality, cutting-edge surgical video articles**

[jomi.com](https://jomi.com)

 ![](/images/jomi_home_preview.png)

 ![](/images/jomi_video_preview.png)

I joined JOMI in high school (~2014) and worked to port their Python/Django website to [WordPress](https://wordpress.com/)/PHP (this version of the site is still hosted at [http://old.jomi.com/](http://old.jomi.com/). Although it started out as a slightly modified blogging site, it required a lot more work as we implemented features such as institutional access management. This work was done with my friends/colleagues [Kevin](https://github.com/kevinaltschuler) and [Philip Seifi](https://www.seifi.co/). In addition to web development, I also got to work in design, attend start-up events and hackathons, and even help film a live surgery.

## Re-design

The company was really hitting the limits of WordPress and I was brought back on for the summer of 2016 to redesign the site with a more customizable framework. In 3 months I was able to port all functionality to a site built from scratch. With our new framework I was able to add a much cleaner and intuitive content management system (CMS), institutional access management, and could now provide much more detailed site analytics for the sales team.

 ![](/images/jomi_cms_preview.png)

## Tech Stack

The server is built on [node.js](https://nodejs.org/en/) and is run on an Ubuntu node hosted by [DigitalOcean](https://digitalocean.com). Routing is done with [express.js](http://expressjs.com/), and we connect it to [MongoDB](https://www.mongodb.com/) with [mongoose](https://mongoosejs.com/) and [grid-fs](https://docs.mongodb.com/manual/core/gridfs/). Video hosting is done by [Wistia](https://wistia.com/).

Our front-end is built over the [React.js](https://reactjs.org/) framework, with [backbone.js](https://backbonejs.org/) and [flux.js](https://facebook.github.io/flux/) gluing together our [MVC stack](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller). For search engine scraping purposes, the React templates are compiled server-side and javascript is bootstrapped onto the page once it's loaded client-side. The extensive CMS system is built in the same way as the user-facing site.

Development was done with [gulp](https://gulpjs.com/) as our task runner, [babel](https://babeljs.io/) as our js/React compiler, [webpack](https://webpack.js.org/) as our bundler, and [less](http://lesscss.org/) as our CSS compiler.


