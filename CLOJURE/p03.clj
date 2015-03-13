(defn element-at [l pos]
  (if (zero? pos) '()
      (if (> pos (count l)) '()
          (nth l (dec pos)))))
