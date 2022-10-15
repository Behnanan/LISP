"Exercise 1.16: Design a procedure that evolves an iterative exponentiation process that uses successive squaring 
and uses a logarithmic number of steps, as does fast-expt.
(Hint: Using the observation that (b^n/2)^2 = (b^2)^n/2, keep, along with the exponent n and the base b, an additional
state variable a, and define the state transformation in such a way that the product ab^n is unchanged from state to state.
At the beginning of the process a is taken to be 1, and the answer is given by the value of a at the end of the process.
In general, the technique of defining an invariant quantity that remains unchanged from state to state is a powerful
way to think about the design of iterative algorithms.)"

(define (even? n)
    (= (remainder n 2) 0))

(define (square n) (* n n))

(define (fast-expt b n) 
    (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2)))) 
        (else (* b (fast-expt b (- n 1))))
        )) 

(define (expt b n)
    (expt-iter b n 1))
(define (expt-iter b counter product)
    (if (= counter 0)
        product
            (expt-iter b
                (- counter 1)
                (* b product))))

(define (fast-expt-iter b n)
    (fast-expt-iter-helper b n 1))
(define (fast-expt-iter-helper b n a)
    (cond ((= n 0) a)
        ((even? n) (fast-expt-iter-helper b (/ n 2) (+ a (square (* b (/ n 2))))))
        (else  (fast-expt-iter-helper b (- n 1) (+ a (* b (* b (- n 1))))))

        ))
