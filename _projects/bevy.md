---
number: 6
title: Bevy
id: bevy
permalink: "/projects/bevy"
banner_img: "/images/bevy_banner.png"
title: "Bevy - Another Social Network"
box_title: "Bevy"
box_desc: "Feature-complete failed social network. Web, iOS and Android apps"
---

**Feature-complete failed social network. For Web, iOS, and Android**

\[[WEB + SERVER](https://github.com/atc3/bevy)\]

\[[MOBILE APPS](https://github.com/kevinaltschuler/bevy-mobile)\]

Bevy was a project I worked on with my friend [Kevin](https://github.com/kevinaltschuler) for two years at the end of high school and the beginning of college. The concept was an application designed for small-medium groups that needed a communication platform more robust than Facebook groups or large group chats.

 ![](/images/bevy_preview.png){:width="75%"}
 ![](/images/bevy_android.png){:width="25%"}

We finished up and polished our prototype, which was briefly hosted on joinbevy.com and had apps on both the iOS App Store and the Google Play Store. It had features such as posting, nested comments, chat, smooth account and organization creation, fully-featured mobile apps, and push notifications. Unfortunately (or fortunately?) we did a bad job of convincing organizations at Northeastern to adopt it and left the project for greener pastures.

## Tech Stack

### Server

The server was written in [node.js](https://nodejs.org/en/) and was run on an Ubuntu node hosted by [DigitalOcean](https://digitalocean.com). We used [express.js](http://expressjs.com/) for routing, [MongoDB](https://www.mongodb.com/) for storage, and [ZeroMQ](http://zeromq.org/) for process-to-process communication on our server. 

### Front-end (Web)

Our front end was based in an early version of the [React.js](https://reactjs.org/) framework. We used [backbone.js](https://backbonejs.org/) as the \[**M**\]odel and \[**C**\]ontroller part of our [MVC framework](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller), and glued React as the \[**V**\]iew into the system with [flux.js](https://facebook.github.io/flux/). Our graphical design was strongly based in [Google's Material Design](https://material.io/design/).

### Mobile (iOS + Android)

Our mobile apps, for both iOS and Android, were made with a prototype version of [React Native](https://facebook.github.io/react-native/), which allowed us to port a lot of our existing web code to mobile. While we could recycle some of our MVC logic built in [backbone.js](https://backbonejs.org/) and [flux.js](https://facebook.github.io/flux/), we had to redesign our GUI from scratch and create some custom components that weren't part of the React Native ecosystem at the time.