(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) L)
      ((LIST? car L) (+ sum-up-numbers-simple(cdr L) car L))
      (+ (sum-up-numbers-simple (cdr L)) (car L))
      )
    )