library(tidyverse)
library(apaTables)
library(cocor)
library(predictionInterval)

## determine correlation between rating-complaint and rating-critical correlation
r.jk <- .83
r.jh <- .16
r.kh <- .19
n <- 30

cocor.dep.groups.overlap(r.jk, r.jh, r.kh, n)

## determine correlation between rating-complaint and raises-critical correlation
r.jk <- .83
r.hm <- .38
r.jh <- .59
r.jm <- .16
r.kh <- .67
r.km <- .19
n <- 30

cocor.dep.groups.nonoverlap(r.jk, r.hm, r.jh, r.jm, r.kh, r.km, n)

## run a replication of the study
pi.r(r=.43,n=30,rep.n=100)

## figure out replication sample size with PI less than 0.5 difference
pi.r(r=.43,n=30,rep.n=100)
pi.r(r=.43,n=30,rep.n=1000)
pi.r(r=.43,n=30,rep.n=10000)

## Comparing correlations from 2 papers
r1.jk <- .43
r2.hm <- .10
n1=30
n2=1000

cocor.indep.groups(r1.jk, r2.hm, n1, n2)