#lang racket


(define (filter-range fct cnt)
  (filter fct (range 1 cnt)))

(define (multiple-of-3-or-5 x)
  (if (or (zero? (modulo x 3))
          (zero? (modulo x 5)))
      x
      false))

(define (sum lst)
  (apply + lst))

(sum (filter-range multiple-of-3-or-5 10))

