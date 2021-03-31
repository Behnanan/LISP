"Generalize part 6 above by defining a function suit-strategy that takes three arguments: a suit (h, s, d, or c), 
a strategy to be used if your hand doesn’t include that suit, and a strategy to be used if your hand does include that suit. 
It should return a strategy that behaves accordingly. 
Show how you could use this function and the stop-at function from part 5 to redefine the valentine strategy of part 6."

(require (planet dyoo/simply-scheme:2:2))
(require racket/trace)
(load "twenty-one.scm")
(load "best-total.scm")
(load "other-test-suit-strategy.scm")
(load "stop-at.scm")
(load "assert.scm")

;(trace suit-strategy)

(define (valentine-strategy customer-hand-so-far dealer-up-card)
  ((suit-strategy 'h (stop-at 19) (stop-at 17) customer-hand-so-far dealer-up-card)))	  

;(trace valentine-strategy)
(assert equal? (valentine-strategy '(10s 6s) '(as)) #t "less than 17 always hits")
(exit)
