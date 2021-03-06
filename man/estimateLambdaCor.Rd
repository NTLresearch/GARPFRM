% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/EWMA.R
\name{estimateLambdaCor}
\alias{estimateLambdaCor}
\title{Estimated Lambda}
\usage{
estimateLambdaCor(R, initialWindow = 10, n = 10)
}
\arguments{
\item{R}{xts object of asset returns}

\item{initialWindow}{initial window of observations used in estimating the
initial}

\item{n}{number of periods used to calculate realized correlation}
}
\description{
Estimate lambda for EWMA correlation estimate
}
\details{
The optimal value for lambda is calcualted by minimizing the mean squared
error between the estimated correlation and realized correlation.
}
\examples{
data(crsp_weekly)
R <- largecap_weekly[, 1:2]
initialWindow <- 150
lambda <- estimateLambdaCor(R, initialWindow, n=10)
}
\author{
Ross Bennett
}

