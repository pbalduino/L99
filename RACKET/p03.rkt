#lang racket

(define (element-at l pos)
  (if (= pos 0) '()
    (if (> pos (length l)) '()  
      (list-ref l (- pos 1)))))