(define (inc n) (+ n 1))

(define (product a b term next)
  (if (> a b)
    1
    (* (term a) (product (next a) b term next))))

(define (factorial n) (indentity n))

(define (indentity x) x)

(define (wallis-pi n)
     (if (even? n) 
       (/ (+ n 2) (+ n 1)) 
       (/ (+ n 1) (+ n 2)))) 

