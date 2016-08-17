#lang racket/base

(require rackunit "solution.rkt")

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 4 1 2) 20)
(check-equal? (solution 1 1 2) 5)
