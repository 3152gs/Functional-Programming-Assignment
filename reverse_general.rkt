(define (reverse-general L)
  (cond
    ((NULL? L) L)
    (not (NULL? L) CAR L))
    (reverse-general (CDR L))
    )
