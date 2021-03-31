(define (suit-strategy suit no-suit-strategy yes-suit-strategy customer-hand-so-far dealer-up-card)
      (lambda (customer-hand-so-far dealer-up-card)
          (if ((count-suit suit (split-hand-suits customer-hand-so-far) 0) > 0)
          (yes-suit-strategy customer-hand-so-far dealer-up-card)
	  (no-suit-strategy customer-hand-so-far dealer-up-card))))

(define (count-suit suit hand-suits suit-sum) 
  (define (ca-helper suit card-suit suit-sum)
      (if (equal? card-suit suit) 
      (+ suit-sum 1) 
      (+ suit-sum 0)))  
  (if (empty? hand-suits)
    suit-sum
    (count-suit suit (butfirst hand-suits) (ca-helper suit (first hand-suits) suit-sum))))
