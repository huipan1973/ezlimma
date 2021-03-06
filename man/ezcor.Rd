% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ezcor.R
\name{ezcor}
\alias{ezcor}
\title{Test correlation of each row of an object to a phenotype vector}
\usage{
ezcor(object, phenotype, method = "pearson", reorder.rows = TRUE,
  prefix = NULL, adjust.method = "BH", alternative = "two.sided",
  check.names = TRUE)
}
\arguments{
\item{object}{Matrix-like data object containing log-ratios or log-expression values, with rows corresponding to 
features (e.g. genes) and columns to samples. Must have rownames that are non-duplicated and non-empty.}

\item{phenotype}{Numeric vector of sample characteristics (e.g. phenotypes or treatments). 
Should be same length as \code{ncol(object)}.}

\item{method}{Character string indicating which correlation coefficient to be used for the test. One of 
\code{"pearson"}, \code{"kendall"}, or \code{"spearman"}, can be abbreviated, see \code{\link[stats]{cor.test}}.}

\item{reorder.rows}{Logical, should rows be reordered by p-value?}

\item{prefix}{Character string to add to beginning of column names. \code{NULL} does not add a prefix.}

\item{adjust.method}{Method used to adjust the p-values for multiple testing. Options, in increasing conservatism, 
include \code{"none"}, \code{"BH"}, \code{"BY"}, and \code{"holm"}. See \code{\link[stats]{p.adjust}} for the complete
list of options. A \code{NULL} value will result in the default adjustment method, which is \code{"BH"}.}

\item{alternative}{Alternative hypothesis; must be one of\code{"two.sided"}, \code{"greater"}, or \code{"less"}. 
You can specify just the initial letter. \code{"greater"} corresponds to positive association, \code{"less"} to 
negative association. See \code{\link[stats]{cor.test}}.}

\item{check.names}{Logical; should \code{names(phenotype)==rownames(object)} be checked?}
}
\value{
Data frame.
}
\description{
Test correlation of each row of an object to a phenotype vector using one of 
several correlation methods. See examples in vignette.
}
\seealso{
\code{\link[ezlimma]{limma_cor}}
}
