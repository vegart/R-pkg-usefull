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

#' dplyr extension for group_split
#'
#' This function returns the list from executing dplyr::group_split with its names as the group.
#' @param
#' @keywords replace NA
#' @export
#' @examples
#' if(require(dplyr)){ identical(iris %>% named_group_split(c('Species','Sepal.Length')),iris %>% named_group_split(Species,Sepal.Length)) }
named_group_split <- function(...) {
  grouped <- tryCatch({dplyr::group_by_at(...) },error=function(e){dplyr::group_by(...)})
  names <-  apply(dplyr::group_keys(grouped),1,function(z) paste(z,collapse="_"))
  setNames(dplyr::group_split(grouped),names)
}


