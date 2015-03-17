(defun my-length (l)
  (cond
    ((equal l '()) 0)
    (t (+ 1 (my-length (cdr l))))))

(defun my-but-last (l)
  (cond
   ((equal (my-length (cdr l)) 2)
     (cdr l))
   ((my-but-last (cdr l)))))


; (my-but-last '(1 2 3 4))
