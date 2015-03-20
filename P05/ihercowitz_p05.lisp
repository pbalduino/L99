(defun my-reverse (l)
  (cond
   ((equal l nil) l)
   (t (append 
        (my-reverse (cdr l)) 
        (list (car l))))))
