
(define (squares nums)
  (if (empty? nums)
    '() 
    (se (squarer (first nums))
        (squares (bf nums)))))

(define (squarer num)
  (* num num))