#lang racket

(define (element-at list index)
  (cond
    ((< index 1) '())
    ((eq? index 1) (car list))
    (#t (element-at (cdr list) (- index 1)))))
