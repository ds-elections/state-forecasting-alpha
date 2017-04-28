Untitled
================
Jonathan Matz
4/28/2017

Attempt 1: Non Multi-Level Models
---------------------------------

``` r
Basic_OLS <- lm(mpg ~ wt + qsec + hp, mtcars)
Basic_OLS
```

    ## 
    ## Call:
    ## lm(formula = mpg ~ wt + qsec + hp, data = mtcars)
    ## 
    ## Coefficients:
    ## (Intercept)           wt         qsec           hp  
    ##    27.61053     -4.35880      0.51083     -0.01782

OK it worked.
