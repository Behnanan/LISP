"3. Write a procedure play-n such that (play-n strategy n)
plays n games with a given strategy and returns the number of games that the customer
won minus the number that s/he lost. Use this to exercise your strategy from problem 2,
as well as strategies from the problems below. To make sure your strategies do what you
think they do, trace them when possible.

Don’t forget: a “strategy” is a procedure! We’re asking you to write a procedure that
takes another procedure as an argument. This comment is also relevant to parts 6 and 7
below."

(define (play-n n strategy)
  (play-n-helper n 0 strategy))

(define (play-n-helper n sum strategy)
  (if (= n 0)
      sum
      (play-n-helper (- n 1) (+ sum (twenty-one strategy)) strategy)))