"9. Some people just can’t resist taking one more card. Write a procedure reckless that
takes a strategy as its argument and returns another strategy. This new strategy should
take one more card than the original would. (In other words, the new strategy should
stand if the old strategy would stand on the butlast of the customer’s hand.)"

(require (planet dyoo/simply-scheme))
(load "best-total.scm")
(load "assert.scm")
(load "stop-at-17.scm")

(define (reckless strategy)
  (lambda (customer-hand-so-far dealer-up-card)
    (best-total customer-hand-so-far)
    )
  )

(display (reckless stop-at-17))

(define (stop-at n)
    (lambda (customer-hand-so-far dealer-up-card)
        (< (best-total customer-hand-so-far) n)))

