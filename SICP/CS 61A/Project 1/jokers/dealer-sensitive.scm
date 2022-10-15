"4. Define a strategy named dealer-sensitive that “hits” (takes a card) if (and only if)
the dealer has an ace, 7, 8, 9, 10, or picture card showing, and the customer has less than
17, or the dealer has a 2, 3, 4, 5, or 6 showing, and the customer has less than 12. (The
idea is that in the second case, the dealer is much more likely to “bust” (go over 21), since
there are more 10-pointers than anything else.)"

(load "best-total.scm")

(define (dealer-sensitive customer-hand-so-far dealer-up-card)
    (cond
     ((and (< (best-total customer-hand-so-far) 17) (equals-any? (split-hand-values dealer-up-card) '(a A j J q Q k K 7 8 9 1)) #t))
     ((and (< (best-total customer-hand-so-far) 12) (equals-any? (split-hand-values dealer-up-card) '(2 3 4 5 6 1)) #t))
     (else #f)))

(define (equals-any? dealer-up-card these)
  (cond
   ((empty? these) #f)
   ((equal? (first these) (first dealer-up-card)) #t)
   (else (equals-any? dealer-up-card (butfirst these)))))






