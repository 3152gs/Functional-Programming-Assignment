(define (reverse-general L)
  (cond
    ((NULL? L) L)
    (not (NULL? L) append(list(reverse-general (CDR L)) list (CAR L)))
    )
  )
