;(require (planet dyoo/simply-scheme:2:2))
(load "twenty-one.scm")

(define (play-n n strategy)
  (define (play-n-helper n sum)
    (if (= n 0)
        sum
        (play-n-helper (- n 1) (+ sum (twenty-one strategy)))))

  (play-n-helper n 0))