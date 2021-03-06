% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measurement_group_class.R
\docType{class}
\name{measurement_group_class}
\alias{measurement_group_class}
\title{Class providing object with methods for displaying values of measurement varsets}
\format{\code{\link{R6Class}} object.}
\value{
Object of \code{\link{R6Class}} with methods for returning values and graphs from measurement objects built with this package.
}
\description{
Class providing object with methods for displaying values of measurement varsets
}
\examples{

organization_acceptance_to_schedule <- define_varset(var_defs = list(referral_period_acceptance_to_schedule[[1]]
 ,referral_attr_id_organization)
 ,population_member_id = 'id_referral_visit'
 ,multi_join_type = 'inner') \%>\%
  group_by(id_organization) \%>\%
  summarise_each(c("mean")) \%>\%
  metric_performance_provider$new(., 'met_target', 'id_organization')

  referral_acceptance_to_schedule$get_value(22)
  referral_acceptance_to_schedule$get_donut(22)
}
