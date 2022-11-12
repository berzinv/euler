#lang racket

(define (palindromic-number? n)
  (let ((nlst (string->list (number->string n))))
    (equal? nlst
            (reverse nlst))))

(define (palindromic-numbers min max)
  (sort (filter palindromic-number?
                (flatten (for/list ((i (in-range max min -1)))
                           (for/list ((j (in-range max min -1)))
                             (* i j)))))
        (lambda (a b) (> a b))))

(display (first (palindromic-numbers 100 1000)))
