(define (opt_sum n)
	(define (loop ans n)
		(if (= n 0)
			ans
			(loop (+ ans n) (- n 1))
		)
	)
	(loop 0 n)
)

(display (opt_sum 1000000000))

