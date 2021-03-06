% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vignette_data.R
\docType{data}
\name{tcga_colon_blocks}
\alias{tcga_colon_blocks}
\title{Example methylation data (blocks) for epivizr vignette.}
\format{A \code{\link[GenomicRanges]{GRanges}} object with 129 and \code{mcols}:

\describe{
 \item{\code{value}}{average smooth methylation difference within block}
 \item{\code{area}}{block area estimate (abs(value) * length)}
 \item{\code{cluster}}{id of cluster blockgroup within which block occurs}
 \item{\code{indexStart}}{index of first cluster in block}
 \item{\code{indexEnd}}{index of last cluster in block}
 \item{\code{L}}{number of clusters in block}
 \item{\code{clusterL}}{number of probes in block}
 \item{\code{p.value}}{permutation p.value based on difference conditioned on length}
 \item{\code{fwer}}{family-wise error rate estimate based on difference conditioned on length}
 \item{\code{p.valueArea}}{permutation p.value based on area}
 \item{\code{fwerArea}}{family-wise error rate estimate based on area}
}}
\source{
TCGA project: \url{https://tcga-data.nci.nih.gov/tcga/}
}
\usage{
tcga_colon_blocks
}
\value{
A \code{\link[GenomicRanges]{GRanges}} object.
}
\description{
Example results from methylation analysis of human chromosome 11 using the \code{\link[minfi]{minfi-package}} package 
of TCGA 450k beadarray samples. This object contains large regions of methylation difference between tumor 
and normal samples obtained from \code{\link[minfi]{blockFinder}}.
}
\keyword{datasets}

