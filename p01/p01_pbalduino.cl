; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(defun my-last (coll)
  (if (rest coll)
    (my-last (rest coll))
    (first coll)))

(print (my-last '()))

(print (my-last '(a)))

(print (my-last '(a b c d)))