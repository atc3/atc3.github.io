---
layout: post
title: Valdar Sequence Conservation Code
date: '2019-09-26'
categories:
- research
tags:
- code
- genomics
---

Recently I needed to investigate [sequence conservation](https://en.wikipedia.org/wiki/Conserved_sequence) for a project, and found that there was no easy-to-use script to generate conservation scores for a list of sequences.

The code is posted as a gist here: [https://gist.github.com/atc3/f0260a99c5328a12f4b6fbbe65beec83](https://gist.github.com/atc3/f0260a99c5328a12f4b6fbbe65beec83), as a python function and a CSV file for the [PET91 substitution matrix](https://doi.org/10.1093/bioinformatics/8.3.275) (Thanks to [@ACRMGroup](https://github.com/ACRMGroup) for [digitizing it](https://github.com/ACRMGroup/bioplib/blob/master/data/pet91.mat)).

The conservation function I'm using is the "Valdar conservation score" described in [Valdar and Thornton, 2001](https://doi.org/10.1002/1097-0134(20010101)42:1%3C108::AID-PROT110%3E3.0.CO;2-O). It's written from scratch and validated by checking the output on the same set of sequences when compared to the same Valdar score generated in [SnapGene Viewer](https://www.snapgene.com/snapgene-viewer/). Input a list of aligned sequences (I'm using [Clustal Omega](http://www.clustal.org/omega/) for multiple sequence alignment), and the function returns a list of conservation scores - one for each base in the alignment. The score is scaled from 0 to 1, where 0 is not conserved at all, and 1 is perfectly conserved.

I've split up the code into some general parts so it should be simple to use a different substitution matrix (BLOSUM, etc) or a different amino acid similarity function entirely.
