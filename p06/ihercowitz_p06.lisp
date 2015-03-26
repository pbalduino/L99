(defun my-reverse (l)
  (cond
   ((equal l nil) l)
   (t (append
        (my-reverse (cdr l))
        (list (car l))))))


(defun is-palindrome? (l)
  (cond
   ((equal l (my-reverse l)) "Its a palindrome")
   (t "it's not a palindrome")))

;(is-palindrome? '(m u s s u m))
;(is-palindrome? '(p e r e r e))
