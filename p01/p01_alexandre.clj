(ns p01-alexandre)
(use 'clojure.test)

; P01 (*) Find the last box of a list.
; Example:
; * (my-last '(a b c d))
; (D)


(defn my-last [a_list]
  (first (reverse a_list)))

(deftest test-my-last
  (testing "Get the last element"
    (is (= 5 (my-last [1, 2, 3, 4, 5])))
    (is (= 'd (my-last '[a, b, c, d])))
    (is (= 'd (my-last '(a b c d))))))

(run-tests)
