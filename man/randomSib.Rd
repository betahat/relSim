\name{randomSib}
\alias{randomSib}
\title{Generate a random sibling from a given DNA profile and
  a given set of allele frequencies}
\description{
  Generates a random sibling from a given DNA profile from a
  given set of allele frequencies. At each locus, the sibling
  inherits the first allele of the given profile with one quarter, or the
  second allele with probability one quarter, both alleles with
  probability one quarter, or neither with probability one quarter. If
  the sibling inherits zero or one identical alleles, the missing
  alleles are chosen at random with probability proportional to the
  allele frequencies.
}
\usage{
randomSib(profile, Freqs)
}
\arguments{
  \item{profile}{A vector consisting of 2*nLoci elements. Each element
    in the vector is the (coded) allele held by the individual. This
    represents the sibling.}
  \item{Freqs}{A list containing two lists labelled loci and freqs. The
second list is a list of vectors containing the allele frequencies of
each allele at each locus in the multiplex.} 
}
\value{
  A vector with 2*nLoci elements. Each pair of elements represents the
  genotpe of the random individual at that locus. The genotype alleles
  are always ordered so that allele1 <= allele2.
}
\details{
  The alleles are simply integers rather than the STR repeat
  numbers. This speeds up computation immensely when calculating any of
  the LRs or IBS.
}
\seealso{
  randomChild, randomSample
}
\examples{
data(fbiCaucs)
P1 = randomProfile(fbiCaucs)
S1 = randomSib(P1,fbiCaucs)
P1
S1
}
\author{James M. Curran}
