
(define (square-sum x y) (+ (* x x) (* y y)))

(define (fun x y z)
  (cond [(and (>= x y) (>= z y)) (square-sum x z)]
	[(and (>= x z) (>= y z)) (square-sum x y)]
	[else (square-sum y z)]))
; Check
(= (fun 1 2 3) (square-sum 2 3))
(= (fun 4 2 3) (square-sum 4 3))
(= (fun 1 4 3) (square-sum 4 3))
