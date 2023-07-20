(define (list_sum n)
	(if (null? n)
		0
		(+ (car n) (list_sum (cdr n)))))

(display (list_sum '(1 2 3 4 5 6 7 8 9 10)))
