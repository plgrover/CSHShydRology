% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_peaks.R
\name{get_peaks}
\alias{get_peaks}
\title{Extracts peak flows over a threshold}
\usage{
get_peaks(dataframe, threshold)
}
\arguments{
\item{dataframe}{a data frame of streamflow data containing columns named \option{Date} and \option{Flow}}

\item{threshold}{a value for the threshold. Values above the threshold are tested for peaks.}
}
\value{
a list containing:
	\describe{
	\item{POTevents}{a dataframe contining details of the events}
	\item{events}{a vector with the value 0 when the flow is below the threshold and 1 when above.}
	\item{event_num}{a vector with the value 0 when the flow is below a threshold or the index of the events
	when the threshold was exceeded. i.e. 1,2,3, etc}
	\item{st_date}{start date of events}
	\item{case}{a list of the flows in each individual event (see details for more information)}
}
	The \code{POTevents} dataframe contains five columns: st_date (starting date), max_date (date of maximum in the event),
	max (maximum discharge), volume (volume of the event), and duration (in days).

	The \code{case} list contains the flows during an event and also for three preceeding and subsequent days. The lists
	 range from seven to n days in length.
}
\description{
This function is development code being shared as is. It is expected that the user will be interested in the
dataframe returned for POT analysis and for plotting (i.e. Booth_plots).
}
\details{
This function retrieves peaks greater than the prescribed threshold.  It returns a dataframe of peak characteristics
suitable for subsequent analysis.

The portion under development is the It also returns a list of the flows during an event with the values of the three
preceeding dates and three subsequnt dates.
}
\examples{
threshold <- 0.9*max(W05AA008$Flow)  # arbitrary threshold
my_peaks <- get_peaks(W05AA008, threshold)
str(my_peaks)
}
\references{
Burn, D.H., Whitfield, P.H., Sharif, M., 2016. Identification of changes in floods and flood regimes
in Canada using a peaks over threshold approach. Hydrological Processes, 39: 3303-3314. DOI:10.1002/hyp.10861

Whitfield, P.H., and J.W. Pomeroy. 2016. Changes to flood peaks of a mountain river: implications
for analysis of the 2013 flood in the Upper Bow River, Canada. Hydrological Processes 30:4657-73. doi:
10.1002/hyp.10957.
}
\seealso{
\code{\link{booth_plot}}
}
