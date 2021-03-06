% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ss4stm.R
\name{ss4stm}
\alias{ss4stm}
\title{Sample Size for Estimation of Means in Stratified Sampling}
\usage{
ss4stm(Nh, muh, sigmah, DEFFh = 1, conf = 0.95, rme = 0.03)
}
\arguments{
\item{Nh}{Vector. The population size for each stratum.}

\item{muh}{Vector. The means of the variable of interest in each stratum.}

\item{sigmah}{Vector. The standard deviation of the variable of interest in each stratum.}

\item{DEFFh}{Vector. The design effect of the sample design in each stratum. By default \code{DEFFh = 1}, which corresponds to a stratified simple random sampling design.}

\item{conf}{The statistical confidence. By default \code{conf = 0.95}.}

\item{rme}{The maximun relative margin of error that can be allowed for the estimation.}
}
\value{
The required sample size for the sample and the required sample size per stratum.
}
\description{
This function computes the minimum sample size required for estimating a single mean, in a stratified sampling, subject to predefined errors.
}
\details{
Let assume that the population U is partitioned in H strate. 
Under a stratified sampling, the neccesary sample size to achieve a relative margin of error \eqn{\varepsilon} is defined by: 
\deqn{n = \frac{(\sum_{h=1}^H w_h S_h)^2}{\frac{\varepsilon^2}{z^2_{1-\frac{\alpha}{2}}}+\frac{\sum_{h=1}^H w_h S^2_h}{N}}} 
Where \deqn{S^2_h = DEFF_h \sigma^2_h}
Then, the required sample size in each stratum is given by:
\deqn{n_h = n \frac{w_h S_h}{\sum_{h=1}^H w_h S_h}}
}
\examples{

Nh <- c(15000, 10000, 5000)
muh <- c(300, 200, 100)
sigmah <- c(200, 100, 20)
DEFFh <- c(1, 1.2, 1.5)

ss4stm(Nh, muh, sigmah, rme=0.03)
ss4stm(Nh, muh, sigmah, conf = 0.99, rme=0.03)
ss4stm(Nh, muh, sigmah, DEFFh, conf= 0.99, rme=0.03)

##########################
# Example with Lucy data #
##########################
data(Lucy)
attach(Lucy)

Strata <- as.factor(paste(Zone, Level))
levels(Strata)

Nh <- summary(Strata)
muh <- tapply(Income, Strata, mean)
sigmah <- tapply(Income, Strata, sd)

ss4stm(Nh, muh, sigmah, DEFFh=1, conf = 0.95, rme = 0.03)
ss4stm(Nh, muh, sigmah, DEFFh=1.5, conf = 0.95, rme = 0.03)

#############################
# Example with BigLucy data #
#############################
data(BigLucy)
attach(BigLucy)

Nh <- summary(Zone)
muh <- tapply(Income, Zone, mean)
sigmah <- tapply(Income, Zone, sd)

ss4stm(Nh, muh, sigmah, DEFFh=1, conf = 0.95, rme = 0.03)
ss4stm(Nh, muh, sigmah, DEFFh=1.5, conf = 0.95, rme = 0.03)
}
\author{
Hugo Andres Gutierrez Rojas <hugogutierrez at usantotomas.edu.co>
}
\references{
Gutierrez, H. A. (2009), \emph{Estrategias de muestreo: Diseno de encuestas y estimacion de parametros}. Editorial Universidad Santo Tomas
}
\seealso{
\code{\link{ss4m}}
}

