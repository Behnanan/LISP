
(define (ends-e phrase)
  (if (empty? phrase)
    '()
    (sentence (word-ends-e (first phrase)) (ends-e (butfirst phrase)))))

(define (word-ends-e w)
  (if (equal? (last w) 'e)
    w
    '()))