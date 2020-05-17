\name{BSgenome.SARSCoV2}
\docType{package}

\alias{BSgenome.SARSCoV2-package}
\alias{BSgenome.SARSCoV2}
\alias{SARSCoV2}

\title{Complete genome SARS-CoV-2 isolate Wuhan-Hu-1}

\description{
  Complete genome of SARS-CoV-2 virus
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
SARS_CoV2.fasta
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{Baranov,P.V., et al.}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.SARSCoV2
genome <- BSgenome.SARSCoV2
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
