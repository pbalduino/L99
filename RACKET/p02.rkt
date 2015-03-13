#lang racket

(define (my-but-last l)
  (list (list-ref l (- (length l) 2))
        (last l)))