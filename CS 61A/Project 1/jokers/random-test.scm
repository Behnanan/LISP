(require (planet dyoo/simply-scheme))
(require racket/trace)
;(load "best-total.scm")
(load "twenty-one.scm")
;(load "stop-at-17.scm")
(#%require (only racket/base random))

(display (random 1 12))

(define (random-choice a b)
  (if (zero? (random 2)) a b))

;(display (random-choice 1 10))
;(display (random-choice 1 10))
