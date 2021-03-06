% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polar_plot.R
\name{polar_plot}
\alias{polar_plot}
\title{Polar plot of daily streamflows}
\usage{
polar_plot(bmw, lcol1 = c("black", "gray50"), lcol2 = c("black", "gray50"),
  lfill = c("yellow", "green"), lsig = c("red", "blue"))
}
\arguments{
\item{bmw}{output from binned_MannWhitney}

\item{lcol1}{line colour, default is c("black","gray50")}

\item{lcol2}{point colour, default is c("black","gray50")}

\item{lfill}{fill colour, default is c("yellow","green")}

\item{lsig}{significance symbol colour, default is ("red","blue")}
}
\value{
No value is returned; a standard \R graphic is created.
}
\description{
Produces a polar plot similar to that used in \cite{Whitfield and Cannon, 2000}. It uses output from the function
\code{binned_MannWhitney} or a data structure created using the function \code{polar_plot_prep}.
}
\examples{
range1 <- c(1970,1979)
range2 <- c(1990,1999)
b_MW <- binned_MannWhitney(W05AA008, step = 5, range1, range2, 
ptest = 0.05, station_ID = "05AA008", station_name = "Crowsnest River at Frank")
polar_plot(b_MW)
}
\references{
Whitfield, P.H. and A.J. Cannon. 2000. Polar plotting of seasonal hydrologic
and climatic data. Northwest Science 74: 76-80.

Whitfield, P.H., Cannon, A.J., 2000. Recent variations in climate and hydrology
in Canada. Canadian Water Resources Journal 25: 19-65.
}
\seealso{
\code{\link{binned_MannWhitney}} \code{\link{polar_plot_prep}}
}
\author{
Paul Whitfield <paul.h.whitfield@gmail.com>
}
