(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))))

"a. How many times is the procedure p applied when (sine
12.15) is evaluated?
b. What is the order of growth in space and number of
steps (as a function of a) used by the process generated
by the sine procedure when (sine a) is evaluated?"

"(sine 12.15)
(sine 4.05)
(sine 1.35)
(sine 0.45)
(sine 0.15)
(sine 0.05)
(p 0.05) 0.15 0.0005 .1495"
(require racket/trace)
(trace sine)
(trace p)
(display (sine 12.15))