(defn my-length [l]
  (loop [x l
         acc 0]
    (if (empty? x) acc
        (recur (rest x) (+ 1 acc)))))


(defn my-but-last [l]
  (loop [x l]
    (if (= (my-length (rest x)) 2)
      (rest x)
      (recur (rest x)))))
