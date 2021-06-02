
(define (ordered? nums)
  (if (> 2 (count nums))
    true
    (if (> (item 1 nums) (item 2 nums))
      false
      (ordered? (butfirst nums)))))