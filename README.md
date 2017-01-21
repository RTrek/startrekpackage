README
================

This package gives you the option to talk like the main characters of star trek The next generation.

This package is proudly brought to you by the RTrek community.

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/startrek)](https://cran.r-project.org/package=startrek) [![Licence](https://img.shields.io/badge/licence-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.en.html)[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

How to use this package
=======================

call functions with the name of the characters `Picard()` , `Geordi()`, etc

``` r
library(startrek)
Picard()
```

    ## [1] " A little stiff, but otherwise fine."

``` r
Guinan()
```

    ## [1] " Oh... like figuring out how much fuel it takes to power this ship... or deciding whether to explore one star system or another... arranging schedules, making lists, counting inventory, or... wondering if little girls should go to bed at seven... or be allowed to stay up till eight."

Installation
------------

This package is not on cran. Nor should it be. install with:

``` r
devtools::install_github("Rtrek/startrek")
```

Notes
-----

I have filtered the spoken words of the main characters from the rest of the script. If you would like all sentances in every episode spoken by everyone, you have to use the data from [here](https://github.com/RTrek/TNG "data only")

Code that created the dataset can be found [here](https://github.com/RTrek/startrekTNGdataset "contains code")

Errors, help, great ideas or comments?
--------------------------------------

Did I make spelling errors or do you have an awesome idea? Contact me by opening an issue on top of this page, sending me a pull request (PR) or emailing me.

Kind regards, Roel.
