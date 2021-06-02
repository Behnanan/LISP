(define (filtered-accumulate combiner null-value term a next b filter) 
(if (> a b) 
  null-value 
    (if (filter a) 
        (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter)) 
        (combiner null-value (filtered-accumulate combiner null-value term (next a) next b filter)))))

(define (square x)(* x x))

(define (inc n) (+ n 1))

(define (prime? n)
    (cond
      (( = n 1 ) #t)
      (( = n 2 ) #t)
      (else (prime-helper n 2))))

(define (prime-helper n x)
  (if (= n x) 
    #t
    (if (= (remainder n x) 0) 
      #f
      (prime-helper n (+ x 1)))))
