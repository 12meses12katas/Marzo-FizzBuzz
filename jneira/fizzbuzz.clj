(ns fizzbuzz
  (:use clojure.test))

(defn fizz-buzz []
  (for [x (range 1 100)
        :let [s (str (when (= 0 (mod x 3)) "fizz")
                     (when (= 0 (mod x 5)) "buzz"))]]
    (if (seq s) s x)))

(deftest let-test-fizz-buzz
    (are [x y] (= y ((vec (fizz-buzz))
                     (dec x)))
         1 1
         3 "fizz"
         5 "buzz"
         15 "fizzbuzz"))
