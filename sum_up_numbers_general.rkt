(define (sum-up-numbers-general L)
    (cond
      ((NULL? L) 0)
      ((LIST? (car L)) (+ (sum-up-numbers-general (car L)) 0)) ;change only on this line needed
      ((not (number? (car L))) (+ (sum-up-numbers-general (car L)) 0))
      (else (+ (sum-up-numbers-general (cdr L)) (car L)))
      )
    )
