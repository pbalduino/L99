#lang racket
(define (my-length l)
  (cond
    ((eq? l '()) 0)
    (#t (+ 1 (my-length (rest l))))))

(define (my-last l)
  (cond
    ((= 
      (my-length l) 1) l)
    (#t (my-last (cdr l)))))