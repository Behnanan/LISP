"On Valentine’s Day, your local casino has a special deal: If you win a round of 21 with a heart in your hand, they pay double. 
You decide that if you have a heart in your hand, you should play more aggressively than usual. 
Write a valentine strategy that stops at 17 unless you have a heart in your hand, in which case it stops at 19."

;(require (planet dyoo/simply-scheme:2:2))
(load "twenty-one.scm")
(load "valentine.scm")

(display (twenty-one valentine))
(exit)