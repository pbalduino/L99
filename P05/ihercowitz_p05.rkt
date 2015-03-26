#lang racket

(define (reverse l)
  (cond
    [(eq? l '()) l] 
    [#t (append (reverse (rest l)) (list (car l)))]))
