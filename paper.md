---
  title: "CytobankAPIstats: Computes Signaling and Population Statistics for Cytometry Data on Cytobank using 'CytobankAPI'"
  authors:
   - name: Allison A. Throm
     affiliation: 1,2
     orcid: 0000-0001-6689-7904
   - name: Anthony R. French
     orcid: 0000-0002-4556-8391
     affiliation: 1,2
  affiliations:
   - name: Department of Biomedical Enginering, Washington University in   St. Louis
     index: 1
   - name: Department of Pediatrics, Washington University in St. Louis
     index: 2
  date: 16 September 2017
  bibliography: paper.bib
---

# Summary

The CytobankAPIstats package is an R package for processing cytometry data from Cytobank [@Cytobank] to gain insights about population, marker, and signaling statistics. Cytobank is a subscription-based analysis tool that allows for the analysis of cytometry datasets. While statistics can be directly exported into text files from the online Cytobank platform, processing text files into a useable form can be a tedious, time consuming process.  CytobankAPIstats expands upon code from the R package CytobankAPI [@CytobankAPI] not only to obtain data from a Cytobank account, but also to process the data into matrices for simple downstream statistical analysis, dramatically reducing time to process and analyze data statistically. Additionally, CytobankAPIstats allows for normalization of cytometry data, filtering of data matrices to find parameters of interest, rearranging of the order of matrix columns, and calculation of percentages of cell populations further allowing researchers to manipulate data prior to downstream analysis.
  
# References
