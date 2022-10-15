#lang racket
(require (planet dyoo/simply-scheme))

(define (pigl wd)
    (if (member? (first wd) 'aeiou)
        (word wd 'ay)
        (pigl (word (butfirst wd) (first wd)))))