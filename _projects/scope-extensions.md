---
number: 1
title: SCOPE-MS Extensions
id: scope-extensions
permalink: "/projects/scope-extensions"
banner_img: "/images/scopeext_banner.gif"
title: "SCOPE-MS Extensions"
box_title: "[Slavov Lab] SCOPE-MS Extensions"
box_desc: "[[ Under Development ]] ... Stay tuned!"
---

SCoPE-MS is a proteomics method that allows for the analysis of single mammalian cells by mass spectrometry. Read the open-access article here, in Genome Biology:

[https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1547-5](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-018-1547-5)

 ![](/images/scope-ms_diagram.jpeg){:width="59%"}
 ![](/images/scope_design_table.png){:width="39%"}

I joined the Slavov Lab in the middle of the development of SCoPE-MS, and was able to contribute by developing the last part of the quantitation pipeline -- normalizing and filtering our data from MaxQuant so that it could be used for downstream biological analyses. I also helped clean up our core MATLAB processing code.

----------------

My more recent work with SCoPE-MS has been leading a project that applies its concepts to other areas of proteomics. For me this involves:

  * Mammalian cell culture, mainly on blood cancer cell lines Jurkat (T-cells) and U-937 (monocytes)
  * Proteomics sample preparation:
    - _mPOP_ cell lysis protocols -- [available here on bioRXiV](https://www.biorxiv.org/content/10.1101/399774v1)

 ![](/images/mpop_fig_1.png){:width="75%"}

*Figure 1. from Specht et al 2018*

  * 
    - Experimental cell lysis protocols
    - Conventional and experimental protein digestions
    - Various cleanup procedures, such as with C18 StageTips or SPE with Waters SepPaks
    - Labeling, and optimizing labeling, with Thermo tandem-mass-tags (TMT)
  * Running a variety of MS quantitation methods
    - Isobaric-tag, TMT
    - SILAC
    - Label-free/iBAQ
  * Optimizing LC-MS parameters 
    - Current system is with a Dionex LC, and a base model Q-Exactive.
    - Front end/chromatography is changing frequently, but it's usually a standard reverse phase, nano-LC column, with a fused ESI spray tip and an [ABIRD](https://www.esisourcesolutions.com/products/abird/) in the source.

 ![](/images/orbi_makarov.jpeg){:width="30%"}

*Our lab's setup with a shrine to Alexander Makarov, inventor of the Orbitrap analyzer*

-------------------

In addition to running physical experiments I am writing software tools to help process our data. These are written in a mix of ```R```, ```python```, and ```MATLAB```. 

Recently, much of our analysis has been offloaded/automated with the [DO-MS application](/projects/do-ms), which I encourage you to check out! It eliminates the process of creating scripts for each individual experiment, and allows me to quickly share reports with my colleagues.

Stay tuned! Data/methods will be posted as soon as they are ready.

