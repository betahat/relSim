\name{lrSibDebug}
\alias{lrSibDebug}
\title{Likelihood Ratio / Kinship Index for full-siblings}
\description{
  Calculates Likelihood Ratio comparing the probability of two profiles
  if they are indeed full-sibs compared to unrelated. This is sometimes
  called the kinship index (KI) for full-sibs. This function is
  identical to lrSib except that the calculation is performed in R, and
  provides full calculation detail at each locus. It exists primarily to
  check that the correct formula and logic is being applied in the LR
  calculation so that the result can be manually verified.
}
\usage{
lrSibDebug(sib1, sib2, Freqs)
}
\arguments{
\item{sib1}{A matrix consisting of 2 columns and nLoci rows. Each entry
in the matrix is the (coded) allele held by the individual. This
represents the alleged sibling. The relationship is reflexive so it
does not matter which profile is labelled sib1 and sib2.}
\item{sib2}{See \code{sib1}}
\item{Freqs}{A list containing two lists labelled loci and freqs. The
second list is a list of vectors containing the allele frequencies of
each allele at each locus in the multiplex.} 
}
\value{
A list containing three elements Lines, lr, and Cases. Lines is a list
of strings containing the calculation at each locus so that the result
can be written to file for example. Cases is a numeric code listing
which logical case (1-11) the locus falls into for the profiles in
question. lr is the KI for full-sibs for the two profiles.

}
\examples{
data(fbiCaucs)
P1 = randomProfile(fbiCaucs)
S1 = randomSib(P1, fbiCaucs)
P2 = randomProfile(fbiCaucs)
cat(paste(lrSibDebug(P1, S1, fbiCaucs)$Lines))
cat(paste(lrSibDebug(P1, P2, fbiCaucs)$Lines))
}
\seealso{lrSib, lrPC, IBS}
\references{Buckleton, J, Triggs, C.M., and Walsh, S.J. (2005)\emph{Forensic DNA
  Evidence Interpretation}, CRC Press., Boca Raton, FL. p.411}
\author{James M. Curran}
