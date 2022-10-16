(load "simply.scm")

(define (rational-zero-test divisor polys)
    (rational-zero-test-helper divisor 0 polys))

(define (rational-zero-test-helper divisor result polys)
    (if (= (count polys) 1)
        (+ result (first polys))
        (rational-zero-test-helper divisor (* (+ (first polys) result) divisor) (bf polys))))

;; (rational-zero-test 3 '(4 -13 3)) ;; 0
;; (rational-zero-test -5 '(7 6 -11)) ;; 134
;; (rational-zero-test -5 '(1 0 0 0 -625)) ;; 0
;; (rational-zero-test 2 '(3 10 -6 20 48)) ;; 192