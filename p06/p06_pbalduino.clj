(ns p06-pbalduino
  (:refer-clojure :exclude [reverse]))

; P06 (*) Find out whether a list is a palindrome.
; A palindrome can be read forward or backward; e.g. (x a m a x).

(defn reverse [coll]
  (loop [rev  '()
         coll (seq coll)]
    (if coll
      (recur (conj rev (first coll)) (next coll))
      rev)))

(defn palindrome? [coll]
  (= (seq coll) (reverse coll)))