"3. Our Scheme library provides versions of the every function from the last exercise and
the keep function shown in lecture. Get familiar with these by trying examples such as
the following:"

(every (lambda (letter) (word letter letter)) ’purple)
(every (lambda (number) (if (even? number) (word number number) number))
’(781 5 76 909 24))
(keep even? ’(781 5 76 909 24))
(keep (lambda (letter) (member? letter ’aeiou)) ’bookkeeper)
(keep (lambda (letter) (member? letter ’aeiou)) ’syzygy)
(keep (lambda (letter) (member? letter ’aeiou)) ’(purple syzygy))
(keep (lambda (wd) (member? ’e wd)) ’(purple syzygy))