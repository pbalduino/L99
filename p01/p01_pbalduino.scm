#lang scheme

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(define my-last
  (lambda (coll)
    (cond
      [(eq? coll null) null]
      [(eq? (cdr coll) null) (car coll)]
      [else (my-last (cdr coll))])))

(my-last null)
(my-last '())
(my-last '(a))
(my-last '(a b c d))
