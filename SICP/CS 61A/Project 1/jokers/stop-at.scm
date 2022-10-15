(load "best-total.scm")

(define (stop-at n)
    (lambda (customer-hand-so-far dealer-up-card)
        (< (best-total customer-hand-so-far) n)))
