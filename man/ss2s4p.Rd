% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ss2s4p.R
\name{ss2s4p}
\alias{ss2s4p}
\title{Sample Sizes in Two-Stage sampling Designs for Estimating Signle Proportions}
\usage{
ss2s4p(N, p, conf = 0.95, me = 0.03, M, by, rho)
}
\arguments{
\item{N}{The population size.}

\item{p}{The value of the estimated proportion.}

\item{conf}{The statistical confidence. By default conf = 0.95. By default \code{conf = 0.95}.}

\item{me}{The maximun margin of error that can be allowed for the estimation.}

\item{M}{Number of clusters in the population.}

\item{by}{number: increment of the sequence in the grid.}

\item{rho}{The Intraclass Correlation Coefficient.}
}
\value{
This function returns a grid of possible sample sizes. 
The first column represent the design effect,
the second column is the number of clusters to be selected, 
the third column is the number of units to be selected inside the clusters, 
and finally, the last column indicates the full sample size induced by this particular strategy.
}
\description{
This function computes a grid of possible sample sizes for estimating single proportions under two-stage sampling designs.
}
\details{
In two-stage (2S) sampling, the design effect is defined by
\deqn{DEFF = 1 + (m-1)\rho} 
Where \eqn{\rho} is defined as the intraclass correlation coefficient,  
m is the average sample size of units selected inside each cluster. 
The relationship of the full sample size of the two stage design (2S) with the 
simple random sample (SI) design is given by
\deqn{ n_{2S} =  n_{SI}*DEFF}
}
\examples{

ss2s4p(N=100000, p=0.5, me=0.03, M=50, by=5, rho=0.01)
ss2s4p(N=100000, p=0.5, me=0.05, M=50, by=5, rho=0.1)
ss2s4p(N=100000, p=0.5, me=0.03, M=500, by=100, rho=0.2) 

############################
# Example 2 with Lucy data #
############################

data(Lucy)
attach(Lucy)
N <- nrow(Lucy)
p <- prop.table(table(SPAM))[1]
y <- as.double(SPAM)
cl <- Zone

rho <- ICC(y,cl)$ICC
M <- length(levels(Zone))
ss2s4p(N, 0.99, conf=0.9, me=0.03, M=5, by=1, rho=rho)
}
\author{
Hugo Andres Gutierrez Rojas <hugogutierrez at usantotomas.edu.co>
}
\references{
Gutierrez, H. A. (2009), \emph{Estrategias de muestreo: Diseno de encuestas y estimacion de parametros}. Editorial Universidad Santo Tomas
}
\seealso{
\code{\link{ICC}}
}

