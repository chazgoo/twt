% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simOuterTree.R
\name{.assign.events}
\alias{.assign.events}
\title{.assign.events}
\usage{
.assign.events(run, events)
}
\arguments{
\item{run:}{R6 object of class Run}

\item{events:}{data frame from .sample.outer.events()}
}
\value{
TRUE if events converge to index case, otherwise FALSE
        to trigger sim.outer.tree() to re-run analysis
}
\description{
Assignment of outer events proceeds in reverse (coalescent) time,
starting from the sampled Compartments.
}
\examples{
# reproduce issue #103
set.seed(5)
run <- Run$new(model)
eventlog <- run$get.eventlog()
eventlog$store.fixed.samplings(model$get.fixed.samplings())
events <- .sample.outer.events(run)
}
\keyword{internal}
