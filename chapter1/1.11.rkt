#lang racket/base

;recurcive
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (f (- n 2))
                 (f (- n 3))))))

;(f 1)
;(f 10)

;iter

(define (f2 n)
  (define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter (+ a b c) a b (- count 1))
        ))
  (f-iter 2 1 0 n))

(f2 1)
(f2 10)
