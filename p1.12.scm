;; パスカルの三角形

(define (pascal row col)
  (cond [(= row 1) 1]
	[(or (= col 1) (= col row)) 1]
	[else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))]))

;; パスカルの値を表示する
(define (show-pascal-val row col)
  (display (if (> col row) "" (pascal row col))))

(define (display-pascal-row n)
  (define (display-pascal-row-iter i)
    (show-pascal-val n i)
    (display " ")
    (if (= n i)
	(newline)
	(display-pascal-row-iter (+ i 1))))
  (display-pascal-row-iter 1))

(define (display-pascal n)
  (define (display-pascal-iter i)
    (display-pascal-row i)
    (if (= i n)
	(newline)
	(display-pascal-iter (+ i 1))))
  (display-pascal-iter 1))

(display-pascal 5)



