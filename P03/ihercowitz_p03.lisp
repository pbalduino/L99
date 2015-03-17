(defun element-at (l index)
  (cond
   ((< index 1) '())
   ((equal index 1) (car l))
   (t (element-at (cdr l) (- index 1)))))

;(element-at '(1 2 3 4 5 6 7 8 9 0) 8)
