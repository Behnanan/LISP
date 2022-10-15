"Generalize part 6 above by defining a function suit-strategy that takes three arguments: a suit (h, s, d, or c), 
a strategy to be used if your hand doesn’t include that suit, and a strategy to be used if your hand does include that suit. 
It should return a strategy that behaves accordingly. 
Show how you could use this function and the stop-at function from part 5 to redefine the valentine strategy of part 6."

(require (planet dyoo/simply-scheme))
(load "suit-strategy.scm")
(load "stop-at.scm")
(load "assert.scm")

(define (valentine-strategy customer-hand-so-far dealer-up-card)
  ((suit-strategy 'h (stop-at 19) (stop-at 17)) customer-hand-so-far dealer-up-card))

(assert equal? (valentine-strategy '(10s 6s) 'as) #t "less than 17 always hits")
(assert equal? (valentine-strategy '(10s 7h) 'as) #t "17 hits with hearts")
(assert equal? (valentine-strategy '(10s 8h) 'as) #t "18 hits with hearts")
(assert equal? (valentine-strategy '(10s 7c) 'as) #f "17 stands without hearts")
(assert equal? (valentine-strategy '(10s 9h) 'as) #f "19 always stands")
(assert equal? (valentine-strategy '(10h 7d) 'as) #t "17 hits with hearts")

(display "done.\n")

(exit)
