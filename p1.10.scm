(define (A x y)
  (cond [(= y 0) 0]
	[(= x 0) (* 2 y)]
	[(= y 1) 2]
	[else (A (- x 1) (A x (- y 1)))]))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(print "y = 2n")
(print "(f 2) = " (f 2))
(print "(f 3) = " (f 3))
(print "(f 4) = " (f 4))
(print "y = 2^n")
(print "(g 2) = " (g 2))
(print "(g 3) = " (g 3))
(print "(g 4) = " (g 4))
(print "(g 5) = " (g 5))
(print "y = 2^(h(n - 1))")
(print "(h 1) = " (h 1))
(print "(h 2) = " (h 2))
(print "(h 3) = " (h 3))
(print "(h 4) = " (h 4))


