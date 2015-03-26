(defn my-reverse [lst]
  (loop [l lst
         acc '()]
    (if (empty? l) acc
        (recur (rest l)
               (cons (first l) acc)))))
