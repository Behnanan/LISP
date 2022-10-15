(define (dice) (random 6))

(define (wager roll) 
    (cond 
        ((= roll 0) 0.5)
        ((= roll 1) 1.05)
        ((= roll 2) 1.05)
        ((= roll 3) 1.05)
        ((= roll 4) 1.05)
        ((= roll 5) 1.5)))

(define (game fortune)
    (define (game-helper fortune rolls)
        (if (= rolls 0)
            (round fortune)
            (game-helper (* fortune (wager (dice))) (- rolls 1))))
    (game-helper fortune 300))

(define (average-return fortune games)
    (define (average-return-helper fortune games sum counter)
        (if (= counter 0)
            (/ sum games)
            (average-return-helper fortune games (+ sum (game fortune)) (- counter 1))))
    (average-return-helper fortune games 0 games))

(define (win-loss fortune games)
    (define (win-loss-helper fortune games result counter)
        (if (= counter 0)
            result
            (win-loss-helper fortune games (+ result (result-helper (game fortune) fortune)) (- counter 1))))
    (define (result-helper game fortune)
        (if (equal? (good-bet? game fortune) #t)
            1
            0))
    (define (good-bet? game fortune)
        (if (> game fortune) 
            #t
            #f))        
    (win-loss-helper fortune games 0 games))

;;; (average-return 1000000 1000000)
;;; (win-loss 1000000 5000)