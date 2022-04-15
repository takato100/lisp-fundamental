(define (last-pair x)
    (if (null? (cdr x))
        x
        (last-pair (cdr x))
    )
)

(define (make-cycle x)
    ((cons (last-pair x) (car x)))
)

(define a '(1 2 3 4))

(make-cycle a)

(cadr a)
(caddr a)
(cdr (caddr a))
