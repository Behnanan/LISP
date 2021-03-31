;(require (planet dyoo/simply-scheme:2:2))
(load "twenty-one.scm")
(load "stop-at.scm")
(load "assert.scm")

(display (twenty-one (stop-at 17)))

(display "\nAll tests passed.\n")
(exit)