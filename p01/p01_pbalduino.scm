#lang scheme

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(define my-safe
  (lambda (fun)
    (lambda (coll)
      (if (null? coll)
          null
          (fun coll)))))

(define my-car (my-safe car))

(define my-cdr (my-safe cdr))

(define my-last
  (lambda (coll)
    (if (null? (my-cdr coll))
        (my-car coll)
        (my-last (my-cdr coll)))))

(my-last null)
(my-last '())
(my-last '(a))
(my-last '(a b c d))
