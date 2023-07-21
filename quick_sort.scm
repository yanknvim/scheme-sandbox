(define (quick_sort l)
	(if (null? l)
		'()
		(let ((pivot (car l)))
			(append (quick_sort (filter (lambda (x) (< x pivot)) l))
				(append (filter (lambda (x) (= x pivot)) l)
				(quick_sort (filter (lambda (x) (> x pivot)) l)))))))

(display (quick_sort '(1 3 42 5 5)))
