% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/asinnorm.R
\name{asinnorm}
\alias{asinnorm}
\title{Computes the arcsinh ratio of a matrix in relation to the specified column}
\usage{
asinnorm(mat, col, cofactor)
}
\arguments{
\item{mat}{- The result of a call to the parsestats function}

\item{col}{- The index of column to compute ratios against}

\item{cofactor}{- The cofactor for arcsinh transformation; typically set as 5 for CyTOF}
}
\value{
Returns a matrix with values as the arcsinh ratio  of mat normalized to selected column with the desired cofactor
}
\description{
Computes the arcsinh ratio of a matrix in relation to the specified column
}
\examples{
\donttest{
#Example starting with obtaining data from Cytobank
library(CytobankAPI)
popsofinterest<-c("CD4 T cells","NK cells")
cyto_session <- authenticate(site="premium", username="myusername", password="mypassword")
exptno<-2
popsinterest<-getpops(popsofinterest,exptno,cyto_session)
fcs<-getfcsfiles(exptno,cyto_session)
type=TRUE
results<-analyzedata(cyto_session,markersofinterest,popsofinterest,exptno,type)
asinnorm(results,col=2,cofactor=5)}

#Example with simple data matrix
data<-matrix(1:9,nrow=3,ncol=3,byrow=TRUE)
colnames(data)<-c("Control","Patient1","Patient2")
rownames(data)<-c("Marker1","Marker2","Marker3")
#Normalizing patient data to control sample with cofactor of 5
asinnorm(data,1,5)
}
