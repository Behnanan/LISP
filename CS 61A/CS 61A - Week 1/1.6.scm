"devise a test that will tell you whether Scheme’s and and or are special forms or ordinary functions."

(define (special-or? x y z)
    (or (= x 0) (= y 1) (= z 2)))

