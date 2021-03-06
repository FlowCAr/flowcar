\name{plotRange}
\alias{plotRange}

\title{
Graphical representation of flow ranges and possible network flow values
}
\description{
The plotRange function allows the user to generate a plot illustrating the range of each flow, the parsimonious solution for each flow, the average of the flow value calculated using the (\code{\link{limListGen}}) function, each iteration calculated using the (\code{\link{limListGen}}) function and the restricted flow values using the function (\code{\link{flowLimit}})
}
\usage{
plotRange(limfile, limList, limListLimit, avcol, allcol, limitcol, avpch, allpch, limitpch, legend,...)
}

\arguments{
  \item{limfile}{
This is the user generated LIM file created for analysis purposes.
}
  \item{limList}{
The list of networks solved using LIM (\code{\link{limListGen}})
}
  \item{limListLimit}{
The new list of restricted networks limited through (\code{\link{flowLimit}})
}
\item{avcol}{
Chosen colour for the point representing the average of the LIM iterations, default is "green".
}
\item{allcol}{
Chosen colour for the points representing each of the LIM iterations, default is "red".
}
\item{limitcol}{
Chosen colour for the points representing each of the restricted LIM iterations, default is "blue".
}
\item{avpch}{
Chosen point type for the point representing the average of the LIM iterations, default is 16.
}
\item{allpch}{
Chosen point type for the points representing the LIM iterations, default is 3.
}
\item{limitpch}{
Chosen point type for the points representing the restricted LIM iterations, default is 3.
}
\item{legend}{
Boolean. If TRUE will add a legend to the top right of the figure.
}
\item{...}{
A list of arguments outlined in \code{\link{Plotranges}}
}
}

\details{

}
\examples{
plotRange(limfile = N4,limList = N4LIM,legend = TRUE,xlab ="Flow Range Value")
OR after (\code{\link{enaListGen}}) has been used
plotRange(limfile = N4List$N4,limList = N4List$N4LIM,legend = TRUE,xlab ="Flow Range Value")
After Restrictions has been applied (\code{\link{flowLimit}})
plotRange(limfile = N4,limList = N4LIM,limListLimit = N4LIMv,legend = TRUE,xlab ="Flow Range Value")
OR (\code{\link{enaListGen}}) has been used
plotRange(limfile = N4List$N4,limList = N4List$N4LIM,limListLimit = N4LIMv,legend = TRUE,xlab ="Flow Range Value")
}
\value{
A graphical plot

The example code before restrictions will produce the following plot:

\figure{image8.jpeg}{options:  width=560  height=254}

After restriction

\figure{image9.jpeg}{options:  width=560  height=254}

}
\references{

}
\author{
Ruchit Mahabir

Christopher Waspe

Ursula Scharler
}
\note{
}
\seealso{
\code{\link{Plotranges}}
}
