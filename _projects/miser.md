---
number: 4
title: MISER
id: miser
permalink: "/projects/miser"
banner_img: "/images/miser_banner.png"
title: "MISER - 650K Injections in 6 Months"
box_title: "[Waters Corp] High-Throughput MISER"
box_desc: "Hardware/firmware/software for prototype high-throughput LC-MS/MS screening"
---

**MISER**: Multiple Injection, Single Experiment Run

High-throughput LC-MS/MS solutions are needed to quickly run assays on libraries of hundreds of thousands, or millions, or drug candidates. Pushing our [Waters Acquity HPLC](http://www.waters.com/waters/en_US/Original-UPLC-UHPLC-system-with-sub-2-micron-particle-technology-for-separations/nav.htm?cid=514207&locale=en_US) stack to its limit yields a cycle time of 40 seconds, but with some experimental firmware and hardware modifications we can push this to 18 seconds.

 ![](/images/miser_times.png)

While not as fast as, for example, the [Agilent Rapidfire](https://www.agilent.com/en/products/mass-spectrometry/rapidfire-high-throughput-ms-systems) with <8s cycle times, this could be a cheap, user-installed modification to existing Acquity instruments that would enable high-throughput analyses.

I worked through various hardware changes and firmware modifications in order to gradually push down our cycle times while retaining adequate analytical performance. With a custom packed C18 column, we had stable elution peaks at 80,000 injections, even with our ~3K PSI pulses of pressure per injection. And with custom wash sequences, we can reduce our carryover to 1-3%.

Since no existing Waters software could handle our volume and form of data, I wrote a raw file reader and analysis tool in C++/Armadillo (Grover.exe) that could extract MRM traces, pick peaks, and calculate some useful summary statistics.

 ![](/images/miser_raw2text.png){:width="30%"}
 ![](/images/miser_grover.png){:width="30%"}

I then prototyped an R/Shiny app that could quickly visualize the output from my C++ parser.

 ![](/images/miser_chrom.png){:width="49%"}
 ![](/images/miser_wellplate.png){:width="49%"}


## Bonus:

A picture of our setup:

 ![](/images/miser_setup.png){:width="70%"}

I broke a lot of parts testing this prototype system:

 ![](/images/miser_kill_count.png){:width="40%"}



