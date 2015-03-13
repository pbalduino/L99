(ns p03-pbalduino)

; P03 (*) Find the K'th element of a list.
; The first element in the list is number 1.
; Example:
; * (element-at '(a b c d e) 3)
; C

(defn element-at [coll pos]
  (if (= 1 pos)
    (first coll)
    (recur (next coll) (dec pos))))

(element-at '(a b c d e) 3)