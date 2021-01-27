#lang scheme

(define (get-change n)
  (let* (
         (val-qs (* 25 (floor (/ n 25))))
         (val-ds (* 10 (floor (/ (- n val-qs) 10))))
         (val-ns (*  5 (floor (/ (- n
                                    val-qs
                                    val-ds) 5)))))
    (if (< n 0)
        '((quarters 0) (dimes 0) (nickels 0) (pennies 0))
     (list (list 'quarters (floor (/ val-qs 25)))
           (list 'dimes (floor
                         (/
                          (- n  val-qs) 10)))
           (list' nickels (floor
                          (/
                           (- n val-qs val-ds) 5)))
           (list 'pennies (floor
                           (/
                            (- n val-qs val-ds val-ns)
                            1))))
      )))
                             
(get-change 96) 