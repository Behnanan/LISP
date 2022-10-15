"On Valentine’s Day, your local casino has a special deal: If you win a round of 21 with a heart in your hand, they pay double. 
You decide that if you have a heart in your hand, you should play more aggressively than usual. 
Write a valentine strategy that stops at 17 unless you have a heart in your hand, in which case it stops at 19."

(load "best-total.scm")

(define (valentine customer-hand-so-far dealer-up-card)
    (cond
     ((and (>= (best-total customer-hand-so-far) 19) (equal? (has-suit? customer-hand-so-far 'h) #t)) #f)
     ((and (>= (best-total customer-hand-so-far) 17) (equal? (has-suit? customer-hand-so-far 'h) #f)) #f)
     (else #t)
    ))

(define (has-suit? hand-suits suit)
  (cond 
      ((empty? hand-suits) #f)
      ((has-suit?-helper (first hand-suits) suit) #t)
      (else (has-suit? (butfirst hand-suits) suit))))
      
(define (has-suit?-helper card suit)
  (if (equal? (last card) suit)
      #t
      #f))

