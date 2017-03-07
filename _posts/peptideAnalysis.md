---
layout: post
title: Peptide analysis
category: research
description: On imputation in proteomics	
tags: proteomics | publications
---

By designing a strategy for evaluating the sensitivity & precision of both statistical and imputation methods, we've shown that limma is by far the best way to analyse peptide-level data - and that you should NOT impute peptide values! 

> ![van Ooijen et al 2016]({{ site.baseurl }}/resources/publications/vanOoijen_bb17_banner.svg){: width="100%"}

Over the past few months, we've been finalizing our [paper](www) on doing peptide-level analysis of proteomics data, which is now published in Briefings in Bioinformatics. In short, our results show that the type of missing values that occur in proteomics data have too much structure and are too frequent to effectively impute (i.e., guess) missing peptide values. The additional results that imputation generates are nearly all false positives. Using the error-sharing trick that limma builds on is far more efficient for finding differentially expressed peptides and that is what we recommend in our paper. 