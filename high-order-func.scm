; (define (double func x)
;     (func (func x))
; )

; the definition above wont work
; (double inner_func var)
; it will exec the latter 2 and, (double inner_fucn) will remain. although its (func func)

(define (double func) (lambda (x) (func (func x))))

(define add-one (lambda (x) (+ x 1)))

((double add-one) 2)



