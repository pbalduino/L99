#lang scheme

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(define my-cdr 
  (lambda (coll)
    (if (null? coll)
        null
        (cdr coll))))

(define my-car 
  (lambda (coll)
    (if (null? coll)
        null
        (car coll))))

(define my-last
  (lambda (coll)
    (cond
      [(null? (my-cdr coll)) (my-car coll)]
      [else (my-last (cdr coll))])))

(my-last null)
(my-last '())
(my-last '(a))
(my-last '(a b c d))
