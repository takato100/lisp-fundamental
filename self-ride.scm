
(define (main a b c)
  (cond
    ((<= a b)
      (cond 
        ((<= a c) (+ (* b b) (* c c)))
        (else (+ (*a a) (* b b)))))
    (else 
      (cond
        ((<= b c) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))))))
  

(main 1 5 1)

