(defun my-length (l)
  (cond
    ((equal l '()) 0)
    (t (+ 1 (my-length (cdr l))))))


; (my-length '(1 2 3 4))
