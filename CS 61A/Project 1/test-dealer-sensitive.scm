;(require (planet dyoo/simply-scheme:2:2))
(load "twenty-one.scm")
(load "dealer-sensitive.scm")
(load "assert.scm")

(display (twenty-one dealer-sensitive))

(display "\nAll tests passed.\n")
(exit)