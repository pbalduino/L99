#lang racket

(define (is-palindrome? l)
  (equal? (reverse l) l))