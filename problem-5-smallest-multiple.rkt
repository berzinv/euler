#lang racket

(define (divisible-by-1-to-n? x n)
  (for/and ((i (in-range 1 n)))
    (zero? (modulo x i))))

(define (divisible-by-1-to-n x n)
  (cond
    ((divisible-by-1-to-n? x n) x)
    (else
     (divisible-by-1-to-n (add1 x) n))))

(divisible-by-1-to-n 1 20)