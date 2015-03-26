#lang racket

(define (my-reverse l)
  (cond
    [(eq? l '()) l] 
    [#t (append (my-reverse (rest l)) (list (car l)))]))


(define (is-palindrome? l)
  (cond
    [(equal? l (my-reverse l)) "It's a palindrome"]
    [#t "It'snt a palindrome"]))