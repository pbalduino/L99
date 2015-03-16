(defun my-length (l)
  (cond
    ((equal l '()) 0)
    (t (+ 1 (my-length (cdr l))))))

(defun my-last (l)
  (cond
   ((equal (my-length (cdr l)) 1)
     (cdr l))
   ((my-last (cdr l)))))


; (my-last '(1 2 3 4))
