#' Restart epiviz app connection and workspace.
#'
#' @param file (character) The name of the file that holds the EpivizApp object to be restarted, ending in .rda.
#'
#' @return An object of class \code{\link{EpivizApp}}
#'
#' @examples
#' # see package vignette for example usage
#' app <- restartEpiviz(file="app.rda")
#'
#' @export
restartEpiviz <- function(file) {

  if (!file.exists(file)) {
    stop("File does not exist")
  }

  load(file=file)
  saved_app <- app

  app$server$start_server()
  app$.open_browser()
  app$service()

  chart_ids <- ls(envir=saved_app$chart_mgr$.chart_list)
  for (id in chart_ids) {
    chart_obj <- saved_app$chart_mgr$.get_chart_object(id)
    app$chart_mgr$add_chart(chart_obj)
  }
  return(app)
}
