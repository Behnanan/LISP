(define (assert comparison actual expected msg)
  (if (not (comparison actual expected))
    (display ("ERROR! ~S: actual ~A expected ~A\n" msg actual expected))
    "Passed test"))