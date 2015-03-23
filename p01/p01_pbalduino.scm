#lang scheme

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(define my-last
  (lambda (coll)
    (cond
      [(null? coll) null]
      [(null? (cdr coll)) (car coll)]
      [else (my-last (cdr coll))])))

(my-last null)
(my-last '())
(my-last '(a))
(my-last '(a b c d))
