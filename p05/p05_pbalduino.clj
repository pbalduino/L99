(ns foo
  (:refer-clojure :exclude [reverse]))

; P05 (*) Reverse a list.

(defn reverse [coll]
  (loop [rev  '()
         coll (seq coll)]
    (if coll
      (recur (conj rev (first coll)) (next coll))
      rev)))

(reverse '(a b c d e f))