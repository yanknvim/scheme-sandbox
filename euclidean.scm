(define (euclidean a b)
	(let ((x (max a b)) (y (min a b)))
		(if (= y 0)
				x
				(let ((r (remainder x y)))
					(euclidean y r)))))
	

(display (euclidean 1071 1029))
