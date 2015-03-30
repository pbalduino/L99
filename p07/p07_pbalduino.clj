(ns p07-pbalduino)

; P07 (**) Flatten a nested list structure.
; Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
; 
; Example:
; * (my-flatten '(a (b (c d) e)))
; (a b c d e)
; 
; Hint: Use the predefined functions list and append.

(defn nested? [coll] (some sequential? coll))

(defn my-flatten [coll]
  (loop [coll coll]
    (if-not (nested? coll)
      coll
      (recur (reduce (fn [acc item] 
                       (if (sequential? item)
                          (concat acc item)
                          (concat acc (list item))))
                       (empty coll) 
                       coll)))))

(my-flatten '())

(my-flatten '(a))

(my-flatten '(a (b)))

(my-flatten '(a (b (c d) e)))