library(tidyverse)
library(apaTables)
library(cocor)
library(predictionInterval)

#Question 1
r.jk <- .83
r.jh <- .16
r.kh <- .19
n <- 30

cocor.dep.groups.overlap(r.jk, r.jh, r.kh, n)
#Change in r = .67, 95% CI [.32, 1.04]

#null hypothesis rejected

#QUestion 2

# j = Rating
# k = Complaint
# h = Raises
# m = Critical

r.jk <- .83
r.jh <- .59
r.jm <- .16
r.hm <- .38
r.hk <- .67
r.km <- .19
n <- 30

cocor.dep.groups.nonoverlap(r.jk, r.jh, r.kh, n, var.labels=c("rating", "complaint", "critical"))

#Question 3
pi.r(r=.43, n=30, rep.n=100)

#PI = r=.43, 95% PI [.05, .74]