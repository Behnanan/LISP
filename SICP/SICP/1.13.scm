"Prove that Fib(n) is the closest integer to ϕ^n / √5 where ϕ = (1 + √5) / 2. 
Hint: Let ψ = (1 - √5) / 2. 
Use induction and the definition of the Fibonacci numbers (see Section 1.2.2) to prove that Fib(n) = (ϕ^n - ψ^n) / √5."

(define (square x) (* x x))

(define (average x y)
    (/ (+ x y) 2))

(define (sqrt x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (average guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))

(define (fib n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1))
                (fib (- n 2))))))

(define (test n)
    (/ (expt (/ (+ 1 (sqrt 5)) 2) n) (sqrt 5)))