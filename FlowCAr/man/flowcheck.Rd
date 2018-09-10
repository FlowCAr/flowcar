\name{flowCheck}
\alias{flowCheck}
\title{
Checks the flow against the original distribution
}
\description{
Cross-checks the networks generated against the original flow network to ensure that flows are as they should be.
}
\usage{
flowCheck(limfile,limList)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.

}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
}
\details{
}
\value{

}
\references{
}
\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler}
\note{
}


\seealso{
}
\examples{
CrossCheckedFlows <- flowCheck(limfile = N4, limList = N4LIM)
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
