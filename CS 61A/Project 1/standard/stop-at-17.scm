"2. Define a strategy procedure stop-at-17 that’s identical to the dealer’s, i.e., takes a
card if and only if the total so far is less than 17."

(load "best-total.scm")

(define (stop-at-17 customer-hand-so-far dealer-up-card)
    (if (>= (best-total customer-hand-so-far) 17)
    #f
    #t))
