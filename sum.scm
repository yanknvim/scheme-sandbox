(define (sum n)
	(if (= n 1)
		1
		(+ n (sum (- n 1)))
	)
)

(display (sum 1000000000))
