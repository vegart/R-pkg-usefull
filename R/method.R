#' infix function for replacing NULL
#'
#' This function replaces possible NULL in a single line of code.
#' @param
#' @keywords replace null
#' @export
#' @examples
#' NULL %if_null% iris
`%if_null%` <- `%||%` <-  function(a, b) if (!is.null(a)) a else b


#' infix function for replacing NA or NULL
#'
#' This function replaces possible NA or NULL in a single line of code.
#' @param
#' @keywords replace NA
#' @export
#' @examples
#' NA %if_na% iris
`%if_na%` <- `%@@%` <- function(a, b) if (!is.null(a) && !is.na(a)) a else b





