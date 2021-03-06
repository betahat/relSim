\name{randomSample}
\alias{randomSample}
\title{Generate a random sample of related (or unrelated) pairs of people}
\description{
  Generate a random sample of unrelated, full-sib, or parent/child pairs
  of profiles at a single locus.
}
\usage{
randomSample(nLoc, Freqs, rel = "UN", N = 10000)
}
\arguments{
  \item{nLoc}{The locus number to sample from}
  \item{Freqs}{A list containg elements \code{loci} and
    \code{freqs}. \code{freqs} is a list of vectors containing the
    frequencies at the given loci.}
  \item{rel}{One of 'UN', 'FS', or 'PC' for unrelated, full-sib, or
    parent/child pairs respectively.}
  \item{N}{The sample size}
}
\value{
  An N by 4 matrix of random profiles. The first two columns represent
  the genotype of person one and the second two columns represent the
  genotype of column two. Note that the random profiles do not use the
  orginal allele designations.
}
\seealso{
  randomProfile, randomSib, randomChild
}
\examples{
data(fbiCaucs)
G = randomSample(1, fbiCaucs, "FS", 100)
}
\author{James M. Curran}
