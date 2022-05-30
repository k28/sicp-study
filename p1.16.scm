(define (fast-expt b n)
  (define (fast-expt-proc a b n)
    (cond [(= n 0) a]
	  [(even? n) (fast-expt-proc a (square b) (/ n 2))]
	  [else (fast-expt-proc (* a b) b (- n 1))]))
  (fast-expt-proc 1 b n))

(print "(fast-expt 2 3) : " (fast-expt 2 3))
(print "(fast-expt 2 4) : " (fast-expt 2 4))
