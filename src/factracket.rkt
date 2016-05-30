#!/usr/bin/env racket
#lang racket

(define s (string))

(define (factorial n)
  (define (i_factorial n acc)
    (if (= 0 n)
      acc
      (i_factorial (- n 1) (* n acc))))
  (i_factorial n 1))

(for ([i (in-range 1000)])
  (for ([i (in-range 1 12)])
        (factorial i)
      ))

(println  (string-append  s (number->string (factorial 12))))
