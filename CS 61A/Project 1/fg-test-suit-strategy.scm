"Generalize part 6 above by defining a function suit-strategy that takes three arguments: a suit (h, s, d, or c), 
a strategy to be used if your hand doesn’t include that suit, and a strategy to be used if your hand does include that suit. 
It should return a strategy that behaves accordingly. 
Show how you could use this function and the stop-at function from part 5 to redefine the valentine strategy of part 6."

(require (planet dyoo/simply-scheme:2:2))
(require racket/trace)
(load "twenty-one.scm")
(load "best-total.scm")
;(load "fg-test-suit-strategy.scm")
(load "stop-at.scm")
(load "assert.scm")


(define (any? pred sent)
  (cond ((empty? sent) #f)
        ((pred (first sent)) #t)
        (else (any? pred (butfirst sent)))))

(define (suit-strategy suit has-suit-strategy hasnt-suit-strategy)
  (lambda (hand dealer-card)
    (if (suit-in-hand? suit hand)
      (has-suit-strategy hand dealer-card)
      (hasnt-suit-strategy hand dealer-card))))

(define (suit? suit)
  (lambda (card) (equal? (last card) suit)))

(define (suit-in-hand? suit hand)
  (any? (suit? suit) hand))

(define (valentine-strategy customer-hand-so-far dealer-up-card)
  ((suit-strategy 'h (stop-at 19) (stop-at 17) customer-hand-so-far dealer-up-card)))	  

(assert equal? (valentine-strategy '(10s 6s) '(as)) #t "less than 17 always hits")
(exit)



