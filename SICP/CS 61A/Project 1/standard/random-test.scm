(require (planet dyoo/simply-scheme))
(require racket/trace)
(load "best-total.scm")
(load "twenty-one.scm")
(load "stop-at-17.scm")

(trace twenty-one)
(trace best-total)
(trace stop-at-17)

(display (twenty-one stop-at-17))



