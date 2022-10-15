(define (suit-strategy suit has-suit-strategy hasnt-suit-strategy)
   (lambda (customer-hand-so-far dealer-up-card)
     (if (has-suit? customer-hand-so-far suit)
     (has-suit-strategy customer-hand-so-far dealer-up-card)
       (hasnt-suit-strategy customer-hand-so-far dealer-up-card))))

(define (has-suit? hand-suits suit)
  (cond 
      ((empty? hand-suits) #f)
      ((has-suit?-helper (first hand-suits) suit) #t)
      (else (has-suit? (butfirst hand-suits) suit))))
      
(define (has-suit?-helper card suit)
  (if (equal? (last card) suit)
      #t
      #f))
      













