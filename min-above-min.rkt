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
(define (min-above-min L1 L2)
  (cond
    ((null? L1) #f)  ;return false if L1 is an empty list
    ((null? L2) (find-min L1)) ; if L2 is null return the minimum of L1
    ((null? (find-min L1)) #f) ;if L1 either contains char or its minimum is null, then return false
    ((> (find-min L1)(find-min L2))(find-min L1)) ;if the minimum of L1 is already greater than minimum of L2 then return min of L2
    (else (min-above-min (cdr L1) L2))
    )
  )