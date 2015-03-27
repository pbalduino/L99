; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(defun my-last (coll)
  (if (cdr coll)
    (my-last (cdr coll))
    (car coll)))

(print (my-last '()))
(print (my-last '(a)))
(print (my-last '(a b c d)))