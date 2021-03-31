;(require (planet dyoo/simply-scheme:2:2))
(load "best-total.scm")

; must return true or false
(define (stop-at-17 customer-hand-so-far dealer-up-card)
    (if (>= (best-total customer-hand-so-far) 17)
    #f
    #t))