(ns p04-pbalduino)

; P04 (*) Find the number of elements of a list.

(defn count-elements [coll]
  (loop [coll coll
         count 0]
    (if-not (seq coll)
      count
      (recur (next coll) (inc count)))))

(count-elements '(a b c d e f))

(count-elements '())