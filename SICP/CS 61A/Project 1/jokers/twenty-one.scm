"10. Copy your Scheme file to a new file, named joker.scm, before you begin
this problem. We are going to change the rules by adding two jokers to the deck. A joker
can be worth any number of points from 1 to 11. Modify whatever has to be modified to
make this work. (The main point of this exercise is precisely for you to figure out which
procedures must be modified.) You will submit both this new file and the original, non-
joker version for grading. You don’t have to worry about making strategies optimal; just
be sure nothing blows up and the hands are totalled correctly."

(load "best-total.scm")

(define (twenty-one strategy)
  (define (play-dealer customer-hand dealer-hand-so-far rest-of-deck)
    (cond ((> (best-total dealer-hand-so-far) 21) 1)
	  ((< (best-total dealer-hand-so-far) 17)
	   (play-dealer customer-hand
			(se dealer-hand-so-far (first rest-of-deck))
			(bf rest-of-deck)))
	  ((< (best-total customer-hand) (best-total dealer-hand-so-far)) -1)
	  ((= (best-total customer-hand) (best-total dealer-hand-so-far)) 0)
	  (else 1)))

(define (play-customer customer-hand-so-far dealer-up-card rest-of-deck)
	(cond ((> (best-total customer-hand-so-far) 21) -1)
		((strategy customer-hand-so-far dealer-up-card)
		(play-customer (se customer-hand-so-far (first rest-of-deck))
				dealer-up-card
				(bf rest-of-deck)))
		(else
		(play-dealer customer-hand-so-far
			(se dealer-up-card (first rest-of-deck))
			(bf rest-of-deck)))))

  (let ((deck (make-deck)))
    (play-customer (se (first deck) (first (bf deck)))
		   (first (bf (bf deck)))
		   (bf (bf (bf deck))))) )

(define (make-ordered-deck)
  (define (make-suit s)
    (every (lambda (rank) (word rank s)) '(R A 2 3 4 5 6 7 8 9 10 J Q K)) )
  (se (make-suit 'H) (make-suit 'S) (make-suit 'D) (make-suit 'C)) )

(define (make-deck)
  (define (shuffle deck size)
    (define (move-card in out which)
      (if (= which 0)
	  (se (first in) (shuffle (se (bf in) out) (- size 1)))
	  (move-card (bf in) (se (first in) out) (- which 1)) ))
    (if (= size 0)
	deck
    	(move-card deck '() (random size)) ))
  (shuffle (make-ordered-deck) 52) )
