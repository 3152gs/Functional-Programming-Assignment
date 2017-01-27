;Find a minimum of a list first and then compare that minimum to the next list
;Function to find the minimum
;Find a minimum of a list first and then compare that minimum to the next list
;Function to find the minimum
(define (find-min L)
    (cond
      ((null? L) L)    ;if a list is empty then the minimum in that list is null
      ((not (number? (car L))) (find-min(cdr L))) ;if the item is non-number ignore it
      ((not (number? (find-min(cdr L))))(car L)) ;if a non-numeric character is returned, then the number before that has to returned to compare
      ((null? (cdr L)) (car L)) ;if the list has only one item then the only element is minimum
      ((< (car L)(find-min (cdr L)))(car L)) ; Compare the values         
      (else (find-min(cdr L)))
      )
    )