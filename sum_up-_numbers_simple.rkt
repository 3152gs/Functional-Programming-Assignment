(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) L)
      ((LIST? (car L)) (cdr L))
      (else (+ (sum-up-numbers-simple (cdr L)) (car L)))
      )
    ) 