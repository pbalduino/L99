(defn my-length [l]
  (loop [x l
         acc 0]
    (if (empty? x) acc
        (recur (rest x) (+ 1 acc)))))

; (my-length '(1 2 3 4))
