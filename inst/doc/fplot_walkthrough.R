## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = TRUE--------------------------------------------------------
library(fplot)
data(us_pub_econ)

## ---- echo=FALSE, results='asis'-----------------------------------------
tab = head(us_pub_econ)
# Following line to be run when pdf output only
if ("pdf_document" %in% rmarkdown::all_output_formats(knitr::current_input())){
  tab = as.data.table(lapply(tab, fplot:::truncate_string, method = "trimMid", trunc = 16))
}
knitr::kable(tab)

## ---- fig.width=7--------------------------------------------------------
# When there is only one variable, you can use a vector
plot_distr(us_pub_econ$institution)


## ---- fig.width=7--------------------------------------------------------
plot_distr(institution ~ 1 | jnl_top_5p, us_pub_econ)


## ---- fig.width=7--------------------------------------------------------
plot_distr(journal ~ institution, us_pub_econ)


## ---- fig.width=7--------------------------------------------------------
# Previous graph + "other" column
plot_distr(journal ~ institution, us_pub_econ, addOther = TRUE)


## ---- fig.width=7--------------------------------------------------------
# Previous graph + "other" column
plot_distr(journal ~ institution, us_pub_econ, xlab = "Journal")


## ---- echo = TRUE, results = "hide"--------------------------------------
data(trade, package = "fixest")
head(trade)

## ---- echo=FALSE, results='asis'-----------------------------------------
tab = head(trade)
knitr::kable(tab)

## ---- fig.width=7--------------------------------------------------------
plot_distr(trade$Euros)

## ------------------------------------------------------------------------
plot_distr(Euros~Origin, trade, mod.select = c("DE", "FR"))

## ------------------------------------------------------------------------
plot_distr(iris$Petal.Length)

## ------------------------------------------------------------------------
plot_distr(Petal.Length ~ Species, iris)

## ------------------------------------------------------------------------
plot_distr(Petal.Length ~ Species, iris, mod.method = "splitWithin")

## ------------------------------------------------------------------------
plot_distr(Sepal.Length ~ Species, iris, mod.method = "stack")

## ------------------------------------------------------------------------
plot_distr(institution ~ 1|jnl_top_5p, us_pub_econ, cumul = TRUE)

## ---- fig.width=7--------------------------------------------------------
plot_lines(jnl_top_5p ~ year, us_pub_econ)

## ---- fig.width=7--------------------------------------------------------
# Let's find out the top 3/5 institutions in terms of production
# we use plot_distr without plotting:
info = plot_distr(us_pub_econ$institution, plot = FALSE)
top3_instit = head(info$x, 3)
top5_instit = head(info$x, 5)
plot_lines(jnl_top_5p ~ year | institution, 
           us_pub_econ[institution %in% top3_instit])

## ---- fig.width=7--------------------------------------------------------
plot_lines(1 ~ year | institution, us_pub_econ[institution %in% top5_instit])

## ---- fig.width=7--------------------------------------------------------
plot_lines(1 ~ year | institution, us_pub_econ[institution %in% top5_instit], 
           smoothing_window = 1)

## ------------------------------------------------------------------------
base_pub = us_pub_econ[, .(nb_pub_top_5 = sum(jnl_top_5p)), 
                          by = .(year, institution)]
plot_box(nb_pub_top_5 ~ year, base_pub)

## ------------------------------------------------------------------------
base_pub[, isTop5 := institution %in% top5_instit]
plot_box(nb_pub_top_5 ~ year | isTop5, base_pub)

## ------------------------------------------------------------------------
# we also drop the mean
plot_box(nb_pub_top_5 ~ year | isTop5, base_pub, outlier = FALSE)

## ------------------------------------------------------------------------
setFplot_dict(c(institution = "U.S. institution", 
                jnl_top_5p = "Publications in Top 5% Journals"))

## ------------------------------------------------------------------------
plot_distr(institution ~ 1 | jnl_top_5p, us_pub_econ, maxBins = 10)

