
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-88%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/slugify.svg?branch=master)](https://travis-ci.org/hrbrmstr/slugify)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# slugify

Create Slug Strings for SEO

## Description

Most blogging platforms turn title phrases into slugs for better SEO.
Tools are provided to turn phrases into slugs.

## What’s Inside The Tin

The following functions are implemented:

  - `slugify_native`: Native R slugify (with the help of stringi)

  - `slugify`: Slugify a string

## Installation

``` r
install.packages("slugify", repos = c("https://cinc.rud.is", "https://cloud.r-project.org/"))
# or
remotes::install_git("https://git.rud.is/hrbrmstr/slugify.git")
# or
remotes::install_git("https://git.sr.ht/~hrbrmstr/slugify")
# or
remotes::install_gitlab("hrbrmstr/slugify")
# or
remotes::install_bitbucket("hrbrmstr/slugify")
# or
remotes::install_github("hrbrmstr/slugify")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(slugify)

# current version
packageVersion("slugify")
## [1] '0.2.0'
```

``` r
slugify("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET")
## [1] "new-package-cdccovidview-to-work-with-the-us-cdcs-new-covid-19-trackers-covidview-and-covid-net"

slugify("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET", replacement = "@")
## [1] "new@package@cdccovidview@to@work@with@the@us@cdcs@new@covid19@trackers@covidview@and@covidnet"

slugify("R is great!", remove = "/[Rr]/g")
## [1] "is-geat"
```

``` r
slugify_native("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET")
## [1] "new-package-cdccovidview-to-work-with-the-us-cdcs-new-covid-19-trackers-covidview-and-covid-net"

slugify_native("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET", repl = "@")
## [1] "new@package@cdccovidview@to@work@with@the@us@cdcs@new@covid-19@trackers@covidview@and@covid-net"
```

``` r
microbenchmark::microbenchmark(
  slugify_native("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET"),
  slugify("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET"),
  control = list(warmup = 10)
)
## Unit: microseconds
##                                                                                                                         expr
##  slugify_native("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET")
##         slugify("New Package — {cdccovidview} — To Work with the U.S. CDC’s New COVID-19 Trackers: COVIDView and COVID-NET")
##      min       lq     mean   median       uq      max neval
##  402.661 423.4725 448.0902 444.4745 465.0420  573.784   100
##  474.337 512.2340 557.9481 536.2560 565.6155 1380.351   100
```

## slugify Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | ---: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        6 | 0.86 | 130 | 0.88 |          25 | 0.52 |       32 | 0.48 |
| Rmd  |        1 | 0.14 |  18 | 0.12 |          23 | 0.48 |       35 | 0.52 |

clock Package Metrics for slugify

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
