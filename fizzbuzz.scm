(define (fizzbuzz n)
	(define (loop n i)
		(unless (< n i)
			(cond
				((= (remainder i 15) 0) (display "FizzBuzz\n"))
				((= (remainder i 5) 0) (display "Buzz\n"))
				((= (remainder i 3) 0) (display "Fizz\n"))
				(else (display i) (newline)))
			(loop n (+ i 1))))
	(loop n 1))

(fizzbuzz 100)
