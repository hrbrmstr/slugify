
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/slugify.svg?branch=master)](https://travis-ci.org/hrbrmstr/slugify)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# slugify

Create slug strings for SEO

## Description

Most blogging platforms turn title phrases into slugs for better SEO.
Tools are provided to turn phrases into slugs.

## What’s Inside The Tin

The following functions are implemented:

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
## [1] '0.1.0'
```

``` r
slugify("R is great!")
## [1] "r-is-great"
```

## slugify Metrics

| Lang | \# Files | (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
| :--- | -------: | --: | --: | ---: | ----------: | ---: | -------: | ---: |
| R    |        4 | 0.8 |  33 | 0.79 |          13 | 0.43 |       20 | 0.39 |
| Rmd  |        1 | 0.2 |   9 | 0.21 |          17 | 0.57 |       31 | 0.61 |

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
