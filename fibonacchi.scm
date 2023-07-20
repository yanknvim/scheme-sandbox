(define (fib n)
	(if (< n 2) n
		(+ (fib (- n 1)) (fib (- n 2)))
	)
)

(define (mainloop a b)
	(unless (> a b)
		(display (fib a))
		(newline)
		(mainloop (+ a 1) b)
	)
)

(mainloop 1 40)
