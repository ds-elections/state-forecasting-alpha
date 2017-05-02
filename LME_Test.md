Untitled
================
Jonathan Matz
4/28/2017

### Model 1: Simplest Mixed Effect Formula

``` r
Basic_OLS <- lm(incidence ~ size, cbpp)
summary(Basic_OLS)
```

    ## 
    ## Call:
    ## lm(formula = incidence ~ size, data = cbpp)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -3.1456 -1.5925 -0.4864  0.8006  8.6840 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)   
    ## (Intercept) -0.31106    0.73554  -0.423  0.67405   
    ## size         0.13827    0.04389   3.150  0.00266 **
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 2.432 on 54 degrees of freedom
    ## Multiple R-squared:  0.1553, Adjusted R-squared:  0.1396 
    ## F-statistic: 9.926 on 1 and 54 DF,  p-value: 0.002657

``` r
display(Basic_OLS)
```

    ## lm(formula = incidence ~ size, data = cbpp)
    ##             coef.est coef.se
    ## (Intercept) -0.31     0.74  
    ## size         0.14     0.04  
    ## ---
    ## n = 56, k = 2
    ## residual sd = 2.43, R-Squared = 0.16

``` r
Basic_ME <- lmer(incidence ~ size + (1|herd), cbpp)
summary(Basic_ME)
```

    ## Linear mixed model fit by REML ['lmerMod']
    ## Formula: incidence ~ size + (1 | herd)
    ##    Data: cbpp
    ## 
    ## REML criterion at convergence: 257.9
    ## 
    ## Scaled residuals: 
    ##     Min      1Q  Median      3Q     Max 
    ## -1.7326 -0.4817 -0.1526  0.3818  3.0017 
    ## 
    ## Random effects:
    ##  Groups   Name        Variance Std.Dev.
    ##  herd     (Intercept) 2.833    1.683   
    ##  Residual             4.058    2.015   
    ## Number of obs: 56, groups:  herd, 15
    ## 
    ## Fixed effects:
    ##             Estimate Std. Error t value
    ## (Intercept) -1.69665    0.96525  -1.758
    ## size         0.23748    0.05264   4.511
    ## 
    ## Correlation of Fixed Effects:
    ##      (Intr)
    ## size -0.845

``` r
display(Basic_ME)
```

    ## lmer(formula = incidence ~ size + (1 | herd), data = cbpp)
    ##             coef.est coef.se
    ## (Intercept) -1.70     0.97  
    ## size         0.24     0.05  
    ## 
    ## Error terms:
    ##  Groups   Name        Std.Dev.
    ##  herd     (Intercept) 1.68    
    ##  Residual             2.01    
    ## ---
    ## number of obs: 56, groups: herd, 15
    ## AIC = 265.9, DIC = 250.6
    ## deviance = 254.2

### Model 2: Random Intercept and Slope

``` r
ME <- lmer(incidence ~ size + (size|herd), cbpp)
summary(ME)
```

    ## Linear mixed model fit by REML ['lmerMod']
    ## Formula: incidence ~ size + (size | herd)
    ##    Data: cbpp
    ## 
    ## REML criterion at convergence: 240.3
    ## 
    ## Scaled residuals: 
    ##     Min      1Q  Median      3Q     Max 
    ## -1.7937 -0.5979 -0.1649  0.4924  2.5174 
    ## 
    ## Random effects:
    ##  Groups   Name        Variance Std.Dev. Corr 
    ##  herd     (Intercept) 0.54020  0.7350        
    ##           size        0.03311  0.1819   -1.00
    ##  Residual             2.43192  1.5595        
    ## Number of obs: 56, groups:  herd, 15
    ## 
    ## Fixed effects:
    ##             Estimate Std. Error t value
    ## (Intercept) -0.54175    0.63638  -0.851
    ## size         0.19644    0.06483   3.030
    ## 
    ## Correlation of Fixed Effects:
    ##      (Intr)
    ## size -0.822
