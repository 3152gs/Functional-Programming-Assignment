(define (reverse-general L)
  (cond
    ((NULL? L) L)
    ((list? (car L)) (append (list(reverse-general (CDR L))) (list(reverse-general(CAR L)) ) )) 
    (ELSE (append (reverse-general (CDR L)) (list (CAR L)) ) )
    )
  )

