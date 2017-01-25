(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) 0)
      ;((LIST? (car L)) (+ (sum-up-numbers-simple (cdr L)) (car L)))  Ignore this line for now. Just see if the code works for a simple list only.
      (else (+ (sum-up-numbers-simple (cdr L)) (car L)))
      )
    )