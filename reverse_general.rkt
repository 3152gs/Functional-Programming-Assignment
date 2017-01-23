(define (reverse-general L)
  (cond
    ((NULL? L) L)
    (ELSE (append (reverse-general (CDR L)) (list (CAR L)) ) )
    )
  )
