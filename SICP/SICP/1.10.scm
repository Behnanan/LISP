(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0)(* 2 y))
          ((= y 1) 2)
          (else (A (- x 1) (A x (- y 1))))))

"What are the values of the following expressions?"
(A 1 10) "= 1024"
(A 2 4) "= 65536"
(A 3 3) "= 65536"

--

"Consider the following procedures, where A is the procedure
defined above:"

"1." (define (f n) (A 0 n))
"2." (define (g n) (A 1 n))
"3." (define (h n) (A 2 n))
"4." (define (k n) (* 5 n n))

"Give concise mathematical definitions for the functions computed
by the procedures f, g, and h for positive integer values
of n. For example, (k n) computes 5n2."

"1." 2n
"2." if n = 0, then 0, if n > 0, then 2^n
"3." if n = 0, then 0, if n = 1, then 2, otherwise 2^2^… (n-1 times) 