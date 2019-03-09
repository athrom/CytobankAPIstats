---
  title: "CytobankAPIstats: Computes Signaling and Population Statistics for Cytometry Data on Cytobank using 'CytobankAPI'"
  tags:
   - R
   - mass cytometry
  authors:
   - name: Allison A. Throm
     affiliation: "1,2"
     orcid: 0000-0001-6689-7904
   - name: Anthony R. French
     orcid: 0000-0002-4556-8391
     affiliation: "1,2"
  affiliations:
   - name: Department of Biomedical Enginering, Washington University in   St. Louis
     index: 1
   - name: Department of Pediatrics, Washington University in St. Louis
     index: 2
  date: 16 September 2017
  bibliography: paper.bib
---

# Statement of Need
Differences in cell populations and their signaling molecule phosphorylation patterns in health and disease can be explored to determine potential disease mechanisms and targets for treatment. Mass cytometry uses heavy metal conjugated antibodies coupled with mass spectrometry to detect surface marker expression and protein phosphorylation patterns for over 40 different parameters per cell simultaneously [@Bendall]. Cells can be grouped into populations based upon surface marker expression with statistical summaries of different measurements including population frequency and marker expression computed; however, manual analysis and exportation of statistics from different software analyses platforms and converting the exported data into a usable form can be labor intensive.

# Summary
The CytobankAPIstats package is an R package for processing cytometry data from Cytobank [@Cytobank] to gain insights about population, marker, and signaling statistics. Cytobank is a subscription-based analysis tool that allows for the analysis of cytometry datasets. While statistics can be directly exported into text files from the online Cytobank platform, processing text files into a useable form can be a tedious, time consuming process.  CytobankAPIstats expands upon code from the R package CytobankAPI [@CytobankAPI] not only to obtain data from a Cytobank account, but also to process the data into matrices for simple downstream statistical analysis, dramatically reducing time to process and analyze data statistically. Additionally, CytobankAPIstats allows for normalization of cytometry data, filtering of data matrices to find parameters of interest, rearranging of the order of matrix columns, and calculation of percentages of cell populations further allowing researchers to manipulate data prior to downstream analysis.

The CytobankAPIstats package was developed to analyze signaling data in two autoimmune diseases: polyarticular juvenile idiopathic arthritis and juvenile dermatomyositis (JDM) [@polyarticularJIA][@JDM]. The key function in this package is analyzedata, where the user inputs an API authentication token for a Cytobank session, the names of the markers and populations of interest, the ID of the Cytobank experiment of interest, and a boolean indicating whether population frequency or marker intensity should be analyzed. If the analyzedata type is marker intensity, the asinnorm function may be used to normalize marker intensity data using the hyperbolic arcsinh ratio of samples to a run control as in the above manuscripts with inputs of a matrix marker intensity, index of the reference column for normalization, and the cofactor for the transformation, typically set as 5 for mass cytometry. The analyzedata function was used to generate Figure 1 in both Throm et al. publications cited above and Figure 3 and Supplemental Table 2 in the JDM paper cited above.
  
# References
