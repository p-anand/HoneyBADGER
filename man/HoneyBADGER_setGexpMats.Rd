% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HoneyBADGER.R
\name{HoneyBADGER_setGexpMats}
\alias{HoneyBADGER_setGexpMats}
\title{Set gene expression matrices, normalizes, and maps genes to genomic coordinates}
\arguments{
\item{gexp.sc.init}{Single cell gene expression matrix}

\item{gexp.ref.init}{Reference gene expression matrix such as from GTEX or a match normal}

\item{mart.obj}{Biomart object used for mapping genes to genomic positions}

\item{filter}{Boolean of whether or not to filter genes (default: TRUE)}

\item{minMeanBoth}{Minimum mean gene expression in both the single cell and reference matrices (default: 4.5)}

\item{minMeanTest}{Minimum mean gene expression for the single cell expression matrix (default: 6)}

\item{minMeanRef}{Minimum mean gene expression for the reference expression matrix (default: 8)}

\item{scale}{Boolean of whether or not to scale by library size (default: TRUE)}
}
\description{
Set gene expression matrices, normalizes, and maps genes to genomic coordinates
}
\examples{
\dontrun{ 
hb <- HoneyBADGER$new()
require(biomaRt) ## for gene coordinates
mart.obj <- useMart(biomart = "ENSEMBL_MART_ENSEMBL", dataset = 'hsapiens_gene_ensembl', host = "jul2015.archive.ensembl.org")
hb$setGexpMats(gexp, ref, mart.obj, filter=FALSE, scale=FALSE)
}
}
