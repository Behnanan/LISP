(define (switch s)
  (switch-wd s true))

(define (switch-wd s fwd?)
  (if (empty? s)
    '() 
    (se (opp-pronoun (first s) fwd?) (switch-wd (bf s) false))))

(define (opp-pronoun wd fwd?)
  (cond ((equal? wd 'i) 'you)
    ((equal? wd 'me) 'you)
    ((and fwd? (equal? wd 'you)) 'i)
    ((equal? wd 'you) 'me)
    (else wd)))