% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/b4dm.R
\name{b4dm}
\alias{b4dm}
\title{Statistical power for a hyphotesis testing on a difference of means.}
\usage{
b4dm(N, n, mu1, mu2, sigma1, sigma2, D, DEFF = 1, conf = 0.95,
  plot = FALSE)
}
\arguments{
\item{N}{The population size.}

\item{n}{The sample size.}

\item{mu1}{The value of the estimated mean of the variable of interes for the first population.}

\item{mu2}{The value of the estimated mean of the variable of interes for the second population.}

\item{sigma1}{The value of the estimated variance of the variable of interes for the first population.}

\item{sigma2}{The value of the estimated mean of a variable of interes for the second population.}

\item{D}{The value of the null effect.}

\item{DEFF}{The design effect of the sample design. By default \code{DEFF = 1}, which corresponds to a simple random sampling design.}

\item{conf}{The statistical confidence. By default \code{conf = 0.95}.}

\item{plot}{Optionally plot the power achieved for an specific sample size.}
}
\value{
The power of the test.
}
\description{
This function computes the power for a (right tail) test of difference of means
}
\details{
We note that the power is defined as: \deqn{1-\Phi(Z_{1-\alpha} - \frac{ (D - (\mu_1 - \mu_2))}{\sqrt{\frac{1}{n}(1-\frac{n}{N})S^2}})}
where \deqn{S^2 = DEFF (\sigma_1^2 + \sigma_2^2 }
}
\examples{
b4dm(N = 100000, n = 400, mu1 = 5, mu2 = 5, sigma1 = 10, sigma2 = 15, D = 5)
b4dm(N = 100000, n = 400, mu1 = 5, mu2 = 5, sigma1 = 10, sigma2 = 15, D = 0.03, plot = TRUE)
b4dm(N = 100000, n = 4000, mu1 = 5, mu2 = 5, sigma1 = 10, sigma2 = 15, 
D = 0.05, DEFF = 2, conf = 0.99, plot = TRUE)
}
\author{
Hugo Andres Gutierrez Rojas <hugogutierrez at usantotomas.edu.co>
}
\references{
Gutierrez, H. A. (2009), \emph{Estrategias de muestreo: Diseno de encuestas y estimacion de parametros}. Editorial Universidad Santo Tomas
}
\seealso{
\code{\link{ss4p}}
}

