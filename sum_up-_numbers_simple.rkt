(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) 0)
      ((LIST? (car L)) (+ (sum-up-numbers-simple (cdr L)) (car L)))
      (else (+ (sum-up-numbers-simple (cdr L)) (car L)))
      )
    )