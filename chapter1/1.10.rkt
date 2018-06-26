#lang racket/base

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 10)
;(A 2 4)
;(A 3 3)
(A 2 0)
(A 2 1)
(A 2 2)
(A 2 3)
(A 2 4)

; (define (f n) (A 0 1)) = 2 * n
; (define (g n) (A 1 n)) = 2 ^ n
; (define (k n) (A 2 n)) = 
