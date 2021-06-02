"8. Define a function majority that takes three strategies as arguments and produces a
strategy as a result, such that the result strategy always decides whether or not to “hit”
by consulting the three argument strategies, and going with the majority. That is, the
result strategy should return #t if and only if at least two of the three argument strategies
do. Using the three strategies from parts 2, 4, and 6 as argument strategies, play a few
games using the “majority strategy” formed from these three."

(define (majority strategy-one strategy-two strategy-three)
  (lambda (customer-hand-so-far dealer-up-card)
    (let (
	  (strategy-uno (strategy-one customer-hand-so-far dealer-up-card))
	  (strategy-dos (strategy-two customer-hand-so-far dealer-up-card))
	  (strategy-tres (strategy-three customer-hand-so-far dealer-up-card)))
      (cond
       ((and (equal? strategy-uno #t) (equal? strategy-dos #t) (equal? strategy-tres #t) #t))
       ((and (equal? strategy-uno #t) (equal? strategy-dos #t) #t))
       ((and (equal? strategy-uno #t) (equal? strategy-tres #t) #t))
       ((and (equal? strategy-dos #t) (equal? strategy-tres #t) #t))
       (else #f)))))
