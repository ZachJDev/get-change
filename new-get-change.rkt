#lang scheme

(define (get-change n)
  (if (< n 0)                                        
        '((quarters 0) (dimes 0) (nickels 0) (pennies 0))
  (let* (
         (val-qs (* 25 (floor (/ n 25))))
         (remainder-one (- n val-qs))
         (val-ds (* 10 (floor (/ remainder-one 10))))
         (remainder-two (- remainder-one val-ds))
         (val-ns (*  5 (floor (/ remainder-two 5)))))
    
     (list (list 'quarters (floor (/ val-qs 25)))
           (list 'dimes (floor (/ remainder-one 10)))
           (list 'nickels (floor (/ remainder-two 5)))
           (list 'pennies (floor (/ (- remainder-two val-ns) 1)))))))
                             
(get-change 96) 