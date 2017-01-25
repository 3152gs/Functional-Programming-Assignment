(define (sum-up-numbers-general L)
    (cond
      ((NULL? L) 0) ;Base case : Check if the function is empty. If empty add 0 to the sum.
      ((LIST? (car L)) (+ (sum-up-numbers-general (car L))(sum-up-numbers-general (cdr L)) )) ;Check if list contains list. If there is a list recursively
                                                                                              ;find sum of the car(list) and rest of the list
      ((not (number? (car L))) (+ (sum-up-numbers-general (cdr L)) 0))   ;Check if the atom is a number or not. If not a number simply add 0 to the sum
      (else (+ (sum-up-numbers-general (cdr L)) (car L))) ; Recursively adding numbers to the sum.
      )
    )