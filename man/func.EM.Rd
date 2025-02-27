% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/em_functions.R
\name{func.EM}
\alias{func.EM}
\title{func.EM}
\usage{
func.EM(dat, external.perturbation = NULL, ncpu = 4, scaling = 1000,
  dev = Inf, m.init = NULL, max.iter = 30, warm.iter = NULL,
  lambda.choice = 1, resample = 0, alpha = 1, refresh.iter = 1,
  epsilon = 0.001, debug = FALSE, verbose = TRUE)
}
\arguments{
\item{dat}{OTU count/relative abundance matrix (each OTU in one row)}

\item{external.perturbation}{external perturbation presence matrix (each perturbation in one row, each sample in one column) (Default: NULL)}

\item{ncpu}{number of CPUs (default: 4)}

\item{scaling}{a scaling factor to keep the median of all biomass constant (default: 1000)}

\item{dev}{deviation of the error (for one sample) from the model to be excluded (default: Inf - all the samples will be considered)}

\item{m.init}{initial biomass values (default: use CSS normalization)}

\item{max.iter}{maximal number of iterations (default 30)}

\item{warm.iter}{number of iterations to run before removing any samples and stop adjusting lambda (default: run until convergence and start to remove samples)}

\item{lambda.choice}{1: use lambda.1se for LASSO, 2: use lambda.min for LASSO, a number between (0, 1): this will select a lambda according to (1-lambda.choice)*lambda.min + lambda.choice*lambda.1se}

\item{resample}{number of iterations to resample the data to compute stability of the interaction parameters (default: 0 - no resampling)}

\item{alpha}{the alpha parameter for the Elastic Net model (1-LASSO [default], 0-RIDGE)}

\item{refresh.iter}{refresh the removed samples every X iterations (default: 1)}

\item{epsilon}{convergence threshold (in relative difference): uqn of the relative error in biomass changes (default 1e-3)}

\item{debug}{output debugging information (default FALSE)}

\item{verbose}{print out messages}
}
\description{
Iteratively estimating scaled parameters and biomass
}
\author{
Chenhao Li, Gerald Tan, Niranjan Nagarajan
}
