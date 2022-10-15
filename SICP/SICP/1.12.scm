"Write a procedure that computes elements of Pascal's triangle by means of a recursive process."

(define (pascal n k)
    (/ (factorial n) (* (factorial k) (factorial (- n k)))))

(define (factorial n)
    (define (factorial-helper product n)
        (if (= n 0)
            product
            (factorial-helper (* product n) (- n 1))))
    (factorial-helper 1 n))

"An iterative factorial process would be more efficient"

(define (factorial-iter n)
    (fact-iter-helper 1 1 n))
    (define (fact-iter-helper product counter max-count)
        (if (> counter max-count)
            product
            (fact-iter-helper (* counter product)
            (+ counter 1)
            max-count)))