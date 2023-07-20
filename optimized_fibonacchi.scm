(define (opt_fib n)
	(define (loop a b n)
		(cond
			((= n 0) a)
			((= n 1) b)
			(else (loop b (+ a b) (- n 1)))))
	(loop 0 1 n))

(display (opt_fib 10000))
