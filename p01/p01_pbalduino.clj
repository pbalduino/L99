(ns p01-pbalduino)

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)

(defn my-last [coll]
  (let [cdr (next coll)]
    (if-not cdr
      (first coll)
      (recur cdr))))

(my-last '(a b c d))

(my-last '[a b c d])
