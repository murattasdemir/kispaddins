# Code -------------------------------------------------------------------
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @name latex_equations
#' @title Inserts varius LaTeX equations into an R markdown document
#' @description
#' RStudio add-in to insert LaTeX equations: \itemize{
#'    \item \code{lateq_numbered()} - numbered equation;
#'    \item \code{lateq_display()} - display equation (unnumbered);
#'    \item \code{lateq_align()} - align equation environment;
#'    \item \code{lateq_inline()} - inline equation;
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
#' @family R Markdown formatting add-ins
NULL

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname lateq_numbered
#' @export
lateq_numbered <- function(context = rs_get_context()) {
    rs_enclose_selected_rows_with(text_above = "\\begin{equation}",
                              text_below = "\\end{equation}",
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname lateq_align
#' @export
lateq_align <- function(context = rs_get_context()) {
    rs_enclose_selected_rows_with(text_above = "\\begin{align}",
                              text_below = "\\end{align}",
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname lateq_display
#' @export
lateq_display <- function(context = rs_get_context()) {
    rs_enclose_selection_with(symbol_before = "\\[",
                              symbol_after = "\\]",
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' @rdname lateq_inline
#' @export
lateq_inline <- function(context = rs_get_context()) {
    rs_enclose_selection_with(symbol = "$",
                              context = context)
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
