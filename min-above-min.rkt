;Find a minimum of a list first and then compare that minimum to the next list
;Function to find the minimum
(define (find-min L)
    (cond
      ((null? L) L)    ;if a list is empty then the minimum in that list is null
      ((null? (cdr L))(car L)) ;if the list has only one item then the only element is minimum
      ((not (number? (car L))) (find-min(cdr L))) ;check if the item is number or not
      ((not (number? (CDR L))) (car L))
      ((< (car L)(find-min (cdr L))) ; the recursive case
          (car L)
          )
      (else (find-min(cdr L)))
      )
    )
