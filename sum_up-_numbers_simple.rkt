(define (sum-up-numbers-simple L)
    (cond
      ((NULL? L) 0) ;Base case : Check if the function is empty. If empty add 0 to the sum.
      ((LIST? (car L)) (+ (sum-up-numbers-simple (cdr L)) 0))   ;Check if list contains list. If there is a list make a recursive call 
      															;for rest of the outer list and add 0 to the sum.
                                                                
      ((not (number? (car L))) (+ (sum-up-numbers-simple (cdr L)) 0))   ;;Check if the atom is a number or not. If not a number simply add 0 to the sum
      (else (+ (sum-up-numbers-simple (cdr L)) (car L))) ; Recursively adding numbers to the sum.
      )
    )