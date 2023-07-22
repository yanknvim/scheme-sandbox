(define (make-list a b)
	(if (> a b)
		'()
		(cons a (make-list (+ a 1) b))))

(define (find-prime lst x)
	(define (filter-not-prime lst prime)
		(filter (lambda (x) (not (= (modulo x prime) 0))) lst))
	(let ((prime (car lst)))
		(if (> prime (sqrt x))
			(cons prime (filter-not-prime lst prime))
			(cons prime (find-prime (filter-not-prime lst prime) x)))))

(display (find-prime (make-list 2 100) 100))
