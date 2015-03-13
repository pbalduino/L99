#lang racket

(define (my-but-last l)
  (list (list-ref l 2)
        (last l)))