% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/latex_equations.R
\name{latex_equations}
\alias{latex_equations}
\title{Inserts varius LaTeX equations into an R markdown document}
\description{
RStudio add-in to insert LaTeX equations: \itemize{
   \item \code{lateq_numbered()} - numbered equation;
   \item \code{lateq_display()} - display equation (unnumbered);
   \item \code{lateq_align()} - align equation environment;
   \item \code{lateq_inline()} - inline equation;
}.


These functions internally use the following functions:

\code{rs_enclose_all_with_lines()} -
that adds lines above and below the selection.

\code{rs_enclose_selection_with()} -
that encloses selection with some text. If there is
no selection, it encloses the cursor.
}
\concept{R Markdown formatting add-ins}
