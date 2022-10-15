"Write a procedure that computes f by means of a recursive
process."

(define (f n)
    (if (< n 3) 
        n
        (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))))

"Write a procedure that computes f by means of an
iterative process."

(define (f n)
    (define (f-iter a b c count)
        (cond 
            ((< n 3) n)
            ((<= count 0) a)
            (else (f-iter (+ a (* 2 b) (* 3 c))
            a
            b
            (- count 1)))))
    (f-iter 2 1 0 (- n 2)))