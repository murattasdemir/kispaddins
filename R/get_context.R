#' Retrieve information about an active RStudio document.
#' This function is by Gagznev https://github.com/GegznaV/addin.tools
#' Wrapper for \code{\link[rstudioapi]{getActiveDocumentContext}()}.
#' @export
rs_get_context <- function() {
    rstudioapi::getActiveDocumentContext()
}
