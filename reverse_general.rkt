(define (reverse-general L)
  (cond
    ((NULL? L) L) ; Checking if the list is null or not
    ((list? (car L))  (cons (reverse-general (CDR L)) (list(reverse-general(CAR L)) )) ) ;checking if the element inside the list is a list or not.
                                                                                         ;If yes, reverse the second element first and then reverse the first element.
    (ELSE (append (reverse-general (CDR L)) (list (CAR L)) ) ) ;If this is a simple list reverse the list by recursively passing CDR(list).
    )
  )

