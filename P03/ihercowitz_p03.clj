(defn element-at [lst index]
  (loop [l lst
         idx index]
    (cond
     (< idx 1) nil
     (= idx 1) (first l)
     :default (recur (rest l) (- idx 1)))))
