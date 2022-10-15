(require (planet dyoo/simply-scheme)) 
(load "stop-at-17.scm")
(load "assert.scm")

(assert equal? (stop-at-17 '(10s 7s) 'as) #f "10s 7s >= 17 -> #f")
(assert equal? (stop-at-17 '(as 8c) 'as) #f "as 8c >= 17 -> #f")

(assert equal? (stop-at-17 '(10s 6s) 'as) #t "10s 6s < 17 -> #t")
(assert equal? (stop-at-17 '(2h 3d ks) 'as) #t "2h 3d ks < 17 -> #t")

(display "done.\n")
(exit)
