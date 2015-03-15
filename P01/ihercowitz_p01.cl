(defun my-last (l)
  (cond
   ((eq (length (cdr l)) 1)
     (cdr l))
   ((my-last (cdr l)))))

(my-last '(1 2 3 4))
