;(require (planet dyoo/simply-scheme:2:2))
(load "best-total.scm")

(define (dealer-sensitive customer-hand-so-far dealer-up-card)
    (cond
        ((and (< (best-total customer-hand-so-far) 17) (member? dealer-up-card '(a A j J q Q k K 7 8 9 10))) #t)
        ((and (< (best-total customer-hand-so-far) 12) (member? dealer-up-card '(2 3 4 5 6))) #t)
        (else #f)))