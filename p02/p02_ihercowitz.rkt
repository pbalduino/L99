#lang racket
(define (my-length l)
  (cond
    ((eq? l '()) 0)
    (#t (+ 1 (my-length (cdr l))))))

(define (my-but-last l)
  (cond
    ((=
      (my-length l) 2) l)
    (#t (my-last (cdr l)))))
