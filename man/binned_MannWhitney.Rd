% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/binned_MannWhitney.R
\name{binned_MannWhitney}
\alias{binned_MannWhitney}
\title{Compares two time periods of data using Mann-Whitney test}
\usage{
binned_MannWhitney(mdata, step, range1, range2, ptest = 0.05,
  station_ID = "", station_name = "", variable = "discharge")
}
\arguments{
\item{mdata}{A data frame of hydrometric data. Must contain the variables \code{Date} and \code{Flow}.}

\item{step}{An integer indicating the degree of smoothing eg. 1, 5, 11.}

\item{range1}{The first and last year of first period, as \code{c(first,last)}}

\item{range2}{The first and last year of second period as code{c(first,last)}}

\item{ptest}{The significance level. The default is \code{0.05}.}

\item{station_ID}{Optional ID of station.}

\item{station_name}{Optional name of station.}

\item{variable}{Name of variable. Default is \option{discharge}}
}
\value{
Returns a list containing:
\describe{
 \item{StationID}{ID of station}
 \item{Station_lname}{Name of station}
 \item{bin_width}{Smoothing time step}
 \item{range1}{range1 years}
 \item{range2}{range2 years}
 \item{p_used}{p value used}
 \item{fail}{TRUE if test failed due to missing values}
 \item{bin_method}{method used for binning}
 \item{test_method}{Mann-Whitney U}
 \item{series}{a data frame containing:}
	\item{period}{period numbers i.e. 1:365/step}
	\item{period1}{median values for each bin in period 1}
	\item{period2}{median values for each bin in period 2}
	\item{mwu}{Mann Whitney U-statistic for each bin between the two periods}
	\item{prob}{probability of U for each period}
	\item{code}{significance codes for each bin}
	}
}
\description{
It bins data based upon a bin size, extracting data for two time periods
and tests for change between two such periods. Result can be passed to 
\code{polar_plot} for visualization
}
\examples{
\dontrun{
# fails due to missing data in both periods
range1 <- c(1960,1969)
range2 <- c(1990,1999)
b_MW <- binned_MannWhitney(W05AA008, step=5, range1, range2, ptest=0.05)}

range1 <- c(1970,1979)
range2 <- c(1990,1999)
b_MW <- binned_MannWhitney(W05AA008, step = 5, range1, range2, 
ptest = 0.05, station_ID = "05AA008", station_name= "Crowsnest River at Frank")

}
\references{
Whitfield, P.H., Cannon, A.J., 2000. Recent variations in climate and
hydrology in Canada. Canadian Water Resources Journal 25: 19-65.
}
\seealso{
\code{\link{polar_plot}} \code{\link{polar_plot_prep}}
}
\author{
Paul Whitfield <paul.h.whitfield@gmail.com>
}
