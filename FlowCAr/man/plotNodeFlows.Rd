\name{plotNodeFlows}
\alias{plotNodeFlows}
\title{
Generates a plot illustrating the frequency of values for a required flow
}
\description{
The plotNodeFlows function produces a density plot, histogram and boxplot for each flow leaving the specified node
}
\usage{
plotNodeFlows(limfile, limList, flowfrom, bins)
}
\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})

}
\item{flowfrom}{
The node in which out-flows are required to be plotted.
}
\item{bins}{
The amount of bins that splits the axis
}
}
\details{
}
\value{
A graphical plot

The example code will produce the following plot:

\figure{image3.jpeg}{options:  width=560  height=254}

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
plotNodeFlows(limfile = N4, limList = N4LIM, flowfrom = “INVERTEBRATE”)
OR
plotNodeFlows(limfile = N4List$N4, limList = N4List$N4LIM, flowfrom = “INVERTEBRATE”)
}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
