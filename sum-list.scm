(define (sum-iter data)

    (define (cut-cadr data)
        (cons (+ (car data) (cadr data)) (cddr data))
    )

    (cond 
        ((null? data) 0)
        ((eq? (cdr data) '()) (car data))
        ((eq? (cddr data) '()) (+ (car data) (cdar data)))
        (else (sum-iter (cut-cadr data)))
    )
)

(sum-iter '(1  2  3))