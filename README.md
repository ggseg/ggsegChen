
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegChen

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/LCBC-UiO/ggsegChen.svg?branch=master)](https://travis-ci.org/LCBC-UiO/ggsegChen)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/LCBC-UiO/ggsegChen?branch=master&svg=true)](https://ci.appveyor.com/project/LCBC-UiO/ggsegChen)
[![Codecov test
coverage](https://codecov.io/gh/LCBC-UiO/ggsegChen/branch/master/graph/badge.svg)](https://codecov.io/gh/LCBC-UiO/ggsegChen?branch=master)
[![R build
status](https://github.com/LCBC-UiO/ggsegChen/workflows/R-CMD-check/badge.svg)](https://github.com/LCBC-UiO/ggsegChen/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/ggsegChen)](https://CRAN.R-project.org/package=ggsegChen)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
<!-- badges: end -->

This package contains dataset for plotting the Chen thickness and areal
cortical atlas ggseg and ggseg3d.

Chen et al. (2013) PNAS, 110 (42) 17089-17094;
[pubmed](href%7Bhttps://doi.org/10.1073/pnas.1308091110)

## Installation

You can install the released version of ggsegChen from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("LCBC-UiO/ggsegChen")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggsegChen)
```

``` r
library(ggseg)

ggseg(atlas = chenAr, mapping = aes(fill = region)) +
  scale_fill_brain("chenAr", package = "ggsegChen") +
  labs(title = "Chen areal (chenAr)") +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(ncol = 3))
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
ggseg(atlas = chenTh, mapping = aes(fill = region)) +
  scale_fill_brain("chenTh", package = "ggsegChen") +
  labs(title = "Chen thickness (chenTh)") +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(ncol = 2))
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

<!-- ```{r "noneval", eval=FALSE} -->

<!-- library(ggseg3d) -->

<!-- ggseg3d(atlas = desterieux_3d) %>%  -->

<!--   pan_camera("right lateral") -->

<!-- ``` -->

<!-- ```{r "orca", include=FALSE} -->

<!-- library(ggseg3d) -->

<!-- p <- ggseg3d(atlas = desterieux_3d) %>% -->

<!--   pan_camera("right lateral") %>% -->

<!--   plotly::add_annotations( text="Screen capture", -->

<!--                   legendtitle=TRUE, showarrow=FALSE, -->

<!--                   font = list(color = "#000000b4", -->

<!--                               family = 'sans serif', -->

<!--                               size = 50)) -->

<!-- plotly::orca(p, "man/figures/README-3d-plot.png") -->

<!-- ``` -->

<!-- ```{r "incl", echo=FALSE} -->

<!-- knitr::include_graphics("man/figures/README-3d-plot.png") -->

<!-- ``` -->

Please note that the ‘ggsegChen’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
