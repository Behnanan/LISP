"Write a procedure that computes elements of Pascal's triangle by means of a recursive process."

(define (p-triangle n r)
    (/ (factorial n) (* (factorial r) (factorial (- n r)))))

(define (factorial n)
    (factorial-helper n 1 1))

(define (factorial-helper n i product)
    (if (> i n)
    product
    (factorial-helper n (+ 1 i) (* product i))))
