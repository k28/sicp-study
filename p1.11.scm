;; 再帰プロセスによるパターン
;; (fun 30)から処理に時間がかかりすぎる...
(define (fun n)
  (cond [(< n 3) n]
	[else (+ (fun (- n 1)) (* 2 (fun (- n 2))) (* 3 (fun (- n 3))))]
	))

;; 反復プロセスによるパターン
(define (culc a b c)
  (+ c (* 2 b) (* 3 a)))

(define (fun-iter a b c count)
  (if (= count 0) (culc a b c)
  (fun-iter b c (culc a b c) (- count 1))))

(define (fun2 n)
  (if (< n 3) n
      (fun-iter 0 1 2 (- n 3))))
