"9. Some people just can’t resist taking one more card. Write a procedure reckless that
takes a strategy as its argument and returns another strategy. This new strategy should
take one more card than the original would. (In other words, the new strategy should
stand if the old strategy would stand on the butlast of the customer’s hand.)"

(#%require (only racket/base random))

(define (best-total hand)
  (if (empty? hand)
    0 ; empty hand
    (if (empty? hand)
      '()
      (bt-helper (split-hand-values hand)))))

(define (bt-helper hand-values) 
    (optimal-sum (sum-of-hand hand-values 0) (count-aces hand-values 0)))

; returns card values only
(define (split-hand-values hand) 
  (if (empty? hand)
    '()
    (sentence (first (first hand)) (split-hand-values (butfirst hand)))))

; returns card suits only
(define (split-hand-suits hand) 
  (if (empty? hand)
    '()
    (sentence (butfirst (first hand)) (split-hand-suits (butfirst hand)))))

(define (count-aces hand-values ace-sum) 
  (define (ca-helper card-value ace-sum)
    (if (equal? card-value 'a) 
      (+ ace-sum 1) 
      (+ ace-sum 0)))  
  (if (empty? hand-values)
    ace-sum
    (count-aces (butfirst hand-values) (ca-helper (first hand-values) ace-sum))))

(define (sum-of-hand hand-values sum)
  (define (soh-helper card-value sum)
      (cond
        ((member? card-value '(k q j K Q J)) 10)
        ((member? card-value '(a A)) 11)
	((member? card-value '(r R)) (random 1 12))
        ((equal? card-value 1) 10)
        (else card-value)))
  (if (empty? hand-values)
    sum
    (sum-of-hand (butfirst hand-values) (+ sum (soh-helper (first hand-values) sum)))))

(define (optimal-sum raw-sum ace-count) 
  (cond
    ((and (= ace-count 2) (>= raw-sum 21) ) (- raw-sum 10)) 
    ((and (= ace-count 1) (> raw-sum 21) ) (- raw-sum 10)) 
    (else raw-sum)
  ))

