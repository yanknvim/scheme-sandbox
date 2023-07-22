(define (make-list a b)
	(if (> a b)
		'()
		(cons a (make-list (+ a 1) b))))

(define (find-prime lst x)
	(let ((prime (car lst)))
		(if (> prime (sqrt x))
			(cons prime (filter (lambda (x) (not (= (modulo x prime) 0))) lst))
			(cons prime (find-prime (filter (lambda (x) (not (= (modulo x prime) 0))) lst) x)))))

(display (find-prime (make-list 2 100) 100))
