"2. A “perfect number” is defined as a number equal to the sum of all its factors less than
itself. For example, the first perfect number is 6, because its factors are 1, 2, 3, and 6,
and 1+2+3=6. The second perfect number is 28, because 1+2+4+7+14=28." 

"What is the third perfect number? Write a procedure (next-perf n) that tests numbers starting
with n and continuing with n+1, n+2, etc. until a perfect number is found. Then you
can evaluate (next-perf 29) to solve the problem." 

"Hint: you’ll need a sum-of-factors subprocedure.
[Note: If you run this program when the system is heavily loaded, it may take half an hour
to compute the answer! Try tracing helper procedures to make sure"

(define (next-perf n)
    (if (= n (sum-of-factors n))
    n
    (next-perf (+ 1 n))))

(define (sum-of-factors n)
    (factorization 1 n 0))

(define (factorization count n sum)
    (if (= n count)
    sum
    (factorization (+ 1 count) n (+ sum (factor? n count)))))

(define (factor? n count)
    (if (= (remainder n count) 0)
        count
        0))

