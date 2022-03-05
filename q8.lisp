(defun in-order (lst)
    (cond
        ((null lst) nil)
        ((null (cdr lst)) (list (car lst)))
        ((append
            (in-order(car(cdr lst))) ;left
            (list(car lst)) ;root
            (in-order(car(cdr(cdr lst)))) ;right
        ))
    )
)
(defun pre-order (lst)
    (cond
        ((null lst) nil)
        ((null (cdr lst)) (list (car lst)))
        ((append
            (list(car lst)) ;root
            (pre-order(car(cdr lst))) ;left
            (pre-order(car(cdr(cdr lst)))) ;right
        ))
    )    
)


(print (in-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ())))))
(print (pre-order '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ())))))