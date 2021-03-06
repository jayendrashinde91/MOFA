% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clusterSamples.R
\name{clusterSamples}
\alias{clusterSamples}
\title{clusterSamples: K-means clustering on samples based on latent factors}
\usage{
clusterSamples(object, k, factors = "all", ...)
}
\arguments{
\item{object}{a trained \code{\link{MOFAmodel}} object.}

\item{k}{number of clusters}

\item{factors}{character vector with the factor name(s), or numeric vector with the index of the factor(s) to use. 
Default is 'all'}

\item{...}{extra arguments  passed to \code{\link{kmeans}}}
}
\value{
output from \code{\link{kmeans}} function
}
\description{
MOFA factors are continuous in nature but they can be used to predict discrete clusters of samples, 
similar to the iCluster model (Shen, 2009). \cr
The clustering can be performed in a single factor, which is equivalent to setting a manual threshold; 
or using multiple factors, where multiple sources of variation are aggregated. \cr
Importantly, this type of clustering is not weighted and does not take into account the different importance of the latent factors.
}
\details{
In some cases, due to model technicalities, samples can have missing values in the latent factor space. 
In such a case, these samples are currently ignored in the clustering procedure.
}
