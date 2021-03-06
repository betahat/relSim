\name{lrMix}
\alias{lrMix}
\title{Calculate locuswise likelihood ratios for two person
  victim/suspect mixtures}
\description{
  Calculates the likelihood ratio for pairs of profiles under the
  propositions \eqn{H_p:\qquad V+S}{Hp: V+S} and \eqn{H_d:\qquad
    V+U}{Hd: V+U}, where \eqn{V}{V}, \eqn{S}{S} and \eqn{U}{U} are the
  victim, the suspect and someone unrelated to the suspect
  respectively. The calculation does not employ \eqn{\theta}{theta} so
  there are no assumptions about the subpopulations of the contributors.
}
\usage{
lrMix(profiles, Freqs)
}
\arguments{
  \item{profiles}{A vector of profile lists, from \code{randomProfilePairs}.
  \code{randomPCPairs} and \code{randomSibPairs} also work but should
not really be used as the calculations do not take account of the
relationship between the two individuals.}
  \item{Freqs}{A list containing elements \code{freqs}, \code{loci} and
    \code{counts}. The element \code{freqs} is a list of vectors of
    allele frequencies at the loci listed in \code{loci}. These
    frequencies are used to evaluate the LR}
}
\value{
  A matrix of LRs calculated at each locus for every pair of
  profiles. Note this is the set of \eqn{N}{N} profile pairs supplied in
  \code{profiles}, not a pairwise comparison.
}
\examples{
data(USCaucs)
p = randomProfilePairs(USCaucs, 10000)
log.lrs = log10(lrMix(p, USCaucs))
boxplot(log.lrs, las = 2)
}
\author{James M. Curran}

