#Confidence interval testing of means

quantile = 0.95 # is 90% with 5% on both sides of the range

n_y <- 9 # subjects treated
n_x <- 9 # subjects placebo
??_y <- 1.5# kg/m2 std.dev. treated 
??_x <- 1.8# kg/m2 std.dev. placebo 
??_y <- -3#  kg/m2 average difference treated
??_x <- 1#  kg/m2 average difference placebo

# calculate pooled standard deviation
??_p <- (((n_x - 1) * ??_x^2 + (n_y - 1) * ??_y^2)/(n_x + n_y - 2))
pval <- pt((??_y - ??_x) / (??_p * (1 / n_x + 1 / n_y)^.5), df=n_y + n_x -2)
pval

#confidenceInterval <-  μ_y - μ_x + c(-1, 1) * qt(quantile, df=n_y+n_x-2) * σ_p * (1 / n_x + 1 / n_y)^.5
round(confidenceInterval,3)

#Binomial test (coke vs. pepsi problem)
binom.test(x,n,alt="greater")