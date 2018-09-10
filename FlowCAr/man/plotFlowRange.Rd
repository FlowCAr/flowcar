\name{plotFlowRange}
\alias{plotFlowRange}
\title{
Generate a plot which illustrates the proportion an individual flow has been sampled

}
\description{
The plotFlowRange function produces a plot illustrating how an individual flow of the users choosing has been sampled by the MCMC and xsample algorithms
}
\usage{
plotFlowRange(limList,flow,...)
}
\arguments{
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
\item{flow}{
The desired node name
}
\item{...}{
Values depicted in \code{\link[graphics]{plot}}
}
}
\details{
}
\value{
A graphical plot

The example code will produce the following plot:

\figure{image4.jpeg}{options:  width=560  height=254}

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
plotFlowRange(limList = N4LIM,flow = “InvCon”)
OR
plotFlowRange(limList = N4List$N4LIM,flow = “InvCon”)
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
