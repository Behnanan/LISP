f(n) = n if n < 3
f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3
// write a procedure that computes f by both recursive and iterative processes


// iterative process
(define (f n)
  (if (< n 3) 
  n
  (f-iter 0 n 3)))

(define (f-iter sum n count)
  (if (= count 0) 
  sum
  (f-iter (+ (* count (- n count)) sum) n (- count 1))))

// recursive process

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2(f (- n 2)))
                 (* 3(f (- n 3)))))))


---

 (define (f n) 
   (define (f-i a b c count) 
     (cond ((< n 3) n) 
           ((<= count 0) a) 
           (else (f-i (+ a (* 2 b) (* 3 c)) a b (- count 1))))) 
   (f-i 2 1 0 (- n 2))) 
