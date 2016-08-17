#lang racket/base

(define (square num)
  (* num num))

(define (solution a b c)
  (if (> a b)
    (if (> b c)
      (+ (square a) (square b))
      (+ (square a) (square c)))
    (+ (square b) (square c)))
)

(provide solution)
