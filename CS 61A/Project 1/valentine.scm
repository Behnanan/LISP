(load "best-total.scm")
(require racket/trace)
(require (planet dyoo/simply-scheme:2:2))

(define (valentine customer-hand-so-far dealer-up-card)
    ; no heart 17; heart in your hand 19.
    (cond
        ((and (>= (best-total customer-hand-so-far) 19) (> (count-hearts (split-hand-suits customer-hand-so-far) 0) 0)) #f)

        ((>= (best-total customer-hand-so-far) 17) #f)
        (else #t)
    ))

(define (count-hearts hand-suits heart-sum) 
  (define (ca-helper card-suit heart-sum)
      (if (equal? card-suit 'h) 
      (+ heart-sum 1) 
      (+ heart-sum 0)))  
  (if (empty? hand-suits)
    heart-sum
    (count-hearts (butfirst hand-suits) (ca-helper (first hand-suits) heart-sum))))

;(trace valentine)
(display(valentine '(ah kd) 'ks))
;(valentine '(as 6s) '2d)
;(valentine '(2d 5c) 'ah)
;(exit)
