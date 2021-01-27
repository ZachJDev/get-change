#lang scheme

(define (change-machine name value)
  (lambda (x) (list name (if (< x 0)
                             0
                             (/ x value)))))
(define (make-quarters num)
  ((change-machine "quarters" 25) num))
(define (make-dimes num)
  ((change-machine "dimes" 10) num))
(define (make-nickels num)
  ((change-machine "nickels" 5) num))
(define (make-pennies num)
  ((change-machine "pennies" 1) num))

(define (get-value f)
  (/ 1 (car (cdr (f 1)))))

(define (coin-seq num fs)
 (let* (
       (result ((car fs) num))
       (res-value (floor (car (cdr result))))
       (coin-value (* res-value (get-value (car fs)))))
   
   (cons (list (car result) res-value)
         (if (= 1 (length fs))
             '()
    (coin-seq (- num coin-value) (cdr fs))))))
        
(define (get-change num)
 (coin-seq num (list make-quarters make-dimes make-nickels make-pennies)))


(get-change 96) ; (("quarters" 3) ("dimes" 2) ("pennies" 1))


;;; old version, may not work

;(define (append-to-change-list f change value)
;  (cons (f change) (get-change (- change (* (last(f change)) value)))))


;(define (get-change num)
;  (let ((change (floor num)))
;    (cond ((>= change 25) (append-to-change-list make-quarters change 25))
;          ((>= change 10) (append-to-change-list make-dimes change 10))
;          ((>= change 5)  (append-to-change-list make-nickels change 5))
;          ((>= change 1)  (append-to-change-list make-pennies change 1))
;          (else '()))
;    ))


