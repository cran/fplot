## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, eval = FALSE)

## -----------------------------------------------------------------------------
#  library(fplot)
#  setFplot_page(page = "a4", margins = 1)

## ----eval = FALSE-------------------------------------------------------------
#  export_graph_start("first_export.pdf")
#  plot(1, 1, type = "n", ann = FALSE)
#  text(1, 1, "This text will be displayed in 10pt.")
#  export_graph_end()

## ----eval = FALSE-------------------------------------------------------------
#  export_graph_start("second_export.pdf", pt = 12)
#  plot(1, 1, type = "n", ann = FALSE)
#  text(1, 1, "This text will be displayed in 12pt.")
#  export_graph_end()

## ----eval = FALSE-------------------------------------------------------------
#  export_graph_start("third_export.pdf", pt = 12, height = 1)
#  plot(1, 1, type = "n", ann = FALSE)
#  text(1, 1, "This text will be displayed in 12pt.")
#  export_graph_end()

## ----eval = FALSE-------------------------------------------------------------
#  # You can also set the point size globally
#  setFplot_page(pt = 12)
#  export_graph_start("fourth_export.pdf", sideways = TRUE)
#  plot(1, 1, type = "n", ann = FALSE)
#  text(1, 1, "This text will be displayed in 12pt.")
#  export_graph_end()

