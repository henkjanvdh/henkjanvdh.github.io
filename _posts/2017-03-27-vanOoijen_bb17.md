---
layout: post
title: Peptide analysis
category: research
description: On imputation in proteomics peptide-level data
tags: proteomics | publications
---

The interpretation of high-throughput proteomics is challenging. We show that limma is best way to analyse peptide-level data, without using imputation.

> ![van Ooijen et al 2016]({{ site.baseurl }}/resources/publications/vanOoijen_bb17_banner.svg){: width="100%"}
> With the advent of high-throughput proteomics, the type and amount of data pose a significant challenge to statistical approaches used to validate current quantitative analysis. Whereas many studies focus on the analysis at the protein level, the analysis of peptide-level data provides insight into changes at the sub-protein level, including splice variants, isoforms and a range of post-translational modifications. Statistical evaluation of liquid chromatography–mass spectrometry/mass spectrometry peptide-based label-free differential data is most commonly performed using a t-test or analysis of variance, often after the application of data imputation to reduce the number of missing values. In high-throughput proteomics, statistical analysis methods and imputation techniques are difficult to evaluate, given the lack of gold standard data sets. Here, we use experimental and resampled data to evaluate the performance of four statistical analysis methods and the added value of imputation, for different numbers of biological replicates. We find that three or four replicates are the minimum requirement for high-throughput data analysis and confident assignment of significant changes. Data imputation does increase sensitivity in some cases, but leads to a much higher actual false discovery rate. Additionally, we find that empirical Bayes method (limma) achieves the highest sensitivity, and we thus recommend its use for performing differential expression analysis at the peptide level.

Over the past few months, we've been finalizing our [paper](https://doi.org/10.1093/bib/bbx031) on doing peptide-level analysis of proteomics data, which is now published in Briefings in Bioinformatics. Peptide-level data is particularly challenging because of the large number of missing peptide quantifications.  In short, our results show that the type of missing values that occur in proteomics data have too much structure and are too frequent to effectively impute (i.e., guess) missing peptide values. The additional results that imputation generates are nearly all false positives. Using the error-sharing trick that limma builds on is far more efficient for finding differentially expressed peptides in large datasets. Our recommendation for peptide-level data: _use limma, don't impute._ 

