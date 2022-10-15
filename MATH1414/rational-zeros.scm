(load "simply.scm")

(define (rational-zero-test divisor result polys)
    (if (empty? polys)
        result
        (rational-zero-test divisor (* (+ (first polys) result) divisor) (bf polys))))

(rational-zero-test 3 0 '(4 -13 3))
;;(rational-zero-test 3 0 '(4 -13 3)) ;; 0
;;(rational-zero-test -5 0 '(7 6 -11)) ;; 134
;;(rational-zero-test -5 0 '(1 0 0 0 -625)) ;; 0
;;(rational-zero-test 2 0 '(3 10 -6 20 48)) ;; 264
   