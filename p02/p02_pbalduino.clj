(ns p02-pbalduino)

; P02 (*) Find the last but one box of a list.
; Example:
; * (my-but-last '(a b c d))
; (C D)

(defn my-but-last [coll]
  (let [cdrcdr (next (next coll))]
    (if-not cdrcdr
      coll
      (recur cdrcdr))))

(my-but-last '(a b c d))