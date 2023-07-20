(define (opt_list_sum n)
	(define (loop ans n)
		(if (null? n)
			ans
			(loop (+ ans (car n)) (cdr n))))
	(loop 0 n))

(display (opt_list_sum '(1 2 3 4 5 6 7 8 9 10)))
