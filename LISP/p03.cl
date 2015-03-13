(defun element-at (l pos)
  (if (= 0 pos) '()
    (if (> pos (length l)) '()
      (nth (- pos 1) l))))
