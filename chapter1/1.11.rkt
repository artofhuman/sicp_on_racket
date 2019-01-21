#lang racket/base

; three recurcive
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (f (- n 2))
                 (f (- n 3))))))

(f 1)
(f 10)
