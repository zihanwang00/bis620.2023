
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2023

<!-- badges: start -->

[![R-CMD-check](https://github.com/zihanwang00/bis620.2023/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/zihanwang00/bis620.2023/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/zihanwang00/bis620.2023/branch/main/graph/badge.svg)](https://app.codecov.io/gh/zihanwang00/bis620.2023?branch=main)
<!-- badges: end -->

The goal of bis620.2023 is to create a package that allows for the
visualization and a platform that facilitates viewers experience with
interacting with large and copious amounts of data. It serves to create
an interface where viewers can view the distinct features and attributes
of the data, specifically comparing to treatment and condition. We apply
some of the following operations: creating a world map of trials,
creating a condition keyword search, creating an intervention and
condition mapping, creating a pie chart for outcomes, having an ID count
for individual countries, and finally creating a picture of a word
cloud. All of these serve to facilitate the process of processing and
visualizing the data more easily as well as making it more interpretable
for the viewer to see as well.

## Installation

You can install the development version of bis620.2023 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zihanwang00/bis620.2023")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bis620.2023)
accel |> 
  head(1000) |> 
  plot_accel()
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```
