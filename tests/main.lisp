(defpackage l-banner/tests/main
  (:use :cl
        :l-banner
        :rove))
(in-package :l-banner/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :l-banner)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
