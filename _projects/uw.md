---
number: 5
title: UW
id: uw
permalink: "/projects/uw"
banner_img: "/images/uw_banner.png"
title: "Universal Workflow - Flexible Task Runner GUI"
box_title: "[Waters Corp] Universal Workflow"
box_desc: "Modular task runner built with Electron/ReactJS"
---

_Apologies for no pictures:_

Waters Corp. is working on a suite of analysis tools to improve mass-spec workflows, but these pieces of software are implemented as separate executables that are conventionally linked together with manually-edited batch scripts. In addition each of these tools rely on large XML configuration files that need to be edited and synced across tools when changing the input data or analysis strategy. 

UniversalWorkflow is a GUI that attempts to bridge all these gaps, by allowing a user to define one central configuration for running a set order of tools with their associated configuration files. It allows users to piece together their analysis tool-by-tool in a desired order. For each tool in the workflow it allows users to import, edit, and store the XML configuration for that tool. Configuration file editing is done by generating a graphical form from a schema.

Once everything is configured, users can run the entire pipeline via. the GUI and monitor the progress of each one of the steps. 

UniversalWorkflow was built with [Electron.js](https://electronjs.org/) as the base and [React.js](https://reactjs.org/) as the front-end framework. 

