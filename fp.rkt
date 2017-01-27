;Question 1
(define (reverse-general L)
  (cond
    ((NULL? L) L) ; Checking if the list is null or not
    ((list? (car L))  (append (reverse-general (CDR L)) (list(reverse-general(CAR L)) )) ) ;checking if the element inside the list is a list or not.
                                                                                         ;If yes, reverse the second element first and then reverse the first element.
    (ELSE (append (reverse-general (CDR L)) (list (CAR L)) ) ) ;If this is a simple list reverse the list by recursively passing CDR(list).
    )
  )


;Question 2
(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) 0) ;Base case : Check if the function is empty. If empty add 0 to the sum.
      ((LIST? (car L)) (+ (sum-up-numbers-simple (cdr L)) 0))   ;Check if list contains list. If there is a list make a recursive call 
      															;for rest of the outer list and add 0 to the sum.
                                                                
      ((not (number? (car L))) (+ (sum-up-numbers-simple (cdr L)) 0))   ;;Check if the atom is a number or not. If not a number simply add 0 to the sum
      (else (+ (sum-up-numbers-simple (cdr L)) (car L))) ; Recursively adding numbers to the sum.
      )
    )

;Question 3
(define (sum-up-numbers-general L)
    (cond
      ((NULL? L) 0) ;Base case : Check if the function is empty. If empty add 0 to the sum.
      ((LIST? (car L)) (+ (sum-up-numbers-general (car L))(sum-up-numbers-general (cdr L)) )) ;Check if list contains list. If there is a list recursively
                                                                                              ;find sum of the car(list) and rest of the list
      ((not (number? (car L))) (+ (sum-up-numbers-general (cdr L)) 0))   ;Check if the atom is a number or not. If not a number simply add 0 to the sum
      (else (+ (sum-up-numbers-general (cdr L)) (car L))) ; Recursively adding numbers to the sum.
      )
    )

;Question 4
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
;Helper function to delete an item from the list
(define (delete_atm atm L)
  (cond
    ((null? L) L) ;base case
    ((not (= atm (car L))) (cons(car L)(delete_atm atm (cdr L)))) ;if the given atom is not equal to the first item add it to the new list
    (= atm (car L) (delete_atm atm (cdr L))) ;if the given atom is equal to the first item, do not add it to the list
    )
  )
;main function
(define (min-above-min L1 L2)
  (cond
    ((null? (find-min L1)) #f) ;if L1 either contains char or its minimum is null, then return false
    ((null? L2) (find-min L1)) ; if L2 is null return the minimum of L1
    ((> (find-min L1)(find-min L2))(find-min L1)) ;if the minimum of L1 is already greater than minimum of L2 then return min of L2
    (else (min-above-min (cdr L1) L2))
    )
  )
