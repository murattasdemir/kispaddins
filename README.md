
# KİSPaddins

<!-- badges: start -->
<!-- badges: end -->

The goal of kispaddins is to provide addins that shortcuts can be assigned to streamline editing process of R markdown files.

Helper functions are borrowed from Gagznev https://github.com/GegznaV/addin.tools

## Installation

You can install KİSPaddins package as follows:

``` r
if (!require(remotes)) {install.packages("remotes")}
remotes::install_github("murattasdemir/kispaddins")
```

## Addins

The advantage of addins in KİSP-addins package is that the enclosing commands leave the cursor inside the enclosed region. For example, `curly_braces` addin command encloses the selection by `{}`. If nothing is selected, it iserts {} but places the cursor inside curly braces, so that you can keep writing.

- LaTeX: display equations `\[...\]`
- LaTeX: inline equations `$...$`
- LaTeX: numbered equations `\begin{equation}...\end{equation}`
- LaTeX: amsmath aligned equations `\begin{align}...\end{align}`
- Editor: Insert curly braces `{}`

# Usage

After installing, you can use **Addins** dropdown menu in Rstudio. Or you can assign a keyboard shorcut. In Rstudio go to *Tools>Modify Keyboard Shortcuts*. Find addins and assign a keyboard shortcut.
