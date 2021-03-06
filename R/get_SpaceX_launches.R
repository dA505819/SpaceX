#' GET info about SpaceX launches
#'
#' @param type [character]: Type of launch. Choose between "latest", NULL (by default) for all PAST launches
#' or "upcoming".
#' @param ... : Query string to API. See more in details.
#'
#' @details
#'
#' \tabular{rr}{
#' Query Stings \tab	Description \cr
#' order \tab	Change result ordering by asc or desc \cr
#' start & final \tab	Filter by a data range \cr
#' flight_number \tab	Filter by flight numberv \cr
#' launch_year \tab	Filter by year \cr
#' launch_date_utc \tab	Filter by UTC timestamp \cr
#' launch_date_local \tab	Filter by local ISO timestamp \cr
#' rocket_id \tab	Filter by rocket id \cr
#' rocket_name \tab	Filter by rocket name \cr
#' rocket_type \tab	Filter by rocket type \cr
#' core_serial \tab	Filter by core serial # \cr
#' cap_serial \tab	Filter by dragon capsule serial # \cr
#' core_reuse \tab	Filter by core reusability \cr
#' side_core1_reuse \tab	Filter by Falcon Heavy side core 1 reuse \cr
#' side_core2_reuse \tab	Filter by Falcon Heavy side core 2 reuse \cr
#' fairings_reuse \tab	Filter by fairing reuse \cr
#' capsule_reuse \tab	Filter by dragon capsule reuse \cr
#' site_id \tab	Filter by launch site id \cr
#' site_name \tab	Filter by launch site name \cr
#' site_name_long \tab	Filter by long launch site name \cr
#' payload_id \tab	Filter by payload id \cr
#' customer \tab	Filter by launch customer \cr
#' payload_type \tab	Filter by payload type \cr
#' orbit \tab	Filter by payload orbit \cr
#' launch_success \tab	Filter by successful launches \cr
#' reused \tab	Filter by launches with reused cores \cr
#' land_success \tab	Filter by sucessful core landings \cr
#' landing_type \tab	Filter by landing method \cr
#' landing_vehicle \tab	Filter by landing vehicle \cr
#'}
#'
#' @examples
#'
#' ## get details about all past launches
#' get_SpaceX_launches()
#'
#' ## get details about all upcoming launches
#' get_SpaceX_launches(type = "upcoming")
#'
#' ## get details about the lastes launch
#' get_SpaceX_launches(type = "latest")
#'
#' ## get details about all past launches in 2018
#' get_SpaceX_launches(launch_year = 2018)
#'
#' @return [data.frame] with parsed data from SpaceX API.
#' @md
#' @export
get_SpaceX_launches <- function(
  type = NULL,
  ...) {

  query <- list(...)

  if (length(query) == 0) query <- NULL

  data <- create_SpaceX_request(path = c("launches", type), query = query)

  return(data)

}
