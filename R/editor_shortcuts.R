# Code -------------------------------------------------------------------
#' ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' This function is by Gagznev https://github.com/GegznaV/addin.tools
#'
#' @name editor_shortcuts
#' @title Various snippets
#' @description
#' RStudio add-in to insert various snippets: \itemize{
#'    \item \code{curly_braces()} - insert curly braces;
#' }.
#'
#'
#' These functions internally use the following functions:
#'
#' \code{rs_enclose_all_with_lines()} -
#' that adds lines above and below the selection.
#'
#' \code{rs_enclose_selection_with()} -
#' that encloses selection with some text. If there is
#' no selection, it encloses the cursor.
#'
#' @family Editor add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname curly_braces
#' @export
curly_braces <- function(context = rs_get_context()) {
    rs_enclose_selection_with(symbol_before = "{",
                              symbol_after = "}",
                              context = context)
}
