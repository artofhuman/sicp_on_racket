#lang racket/base

(define (pascal-triangle row elem)
  (cond
    [(or (= elem 1) (= row 1) (= row elem)) 1]
    [else
      (+
        (pascal-triangle (- row 1) (- elem 1))
        (pascal-triangle (- row 1) elem))]))

(define (print-row row-num)
  (for ([i (in-range 1 (+ row-num 1))])
       (print (pascal-triangle row-num i))
       (cond [(< i row-num) (write '...)]))
  (display "\n"))

(define (print-rectangle count-rows)
    (for ([i (in-range count-rows)])
         (print-row i)))

(print-rectangle 10)
