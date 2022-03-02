;;QUESTION 1
;;https://rextester.com/RXSF64352

(defun split (list i) 
    (cond
        ((<= i 0) ())
        ((null list)(list i))
        (t (cons (car list) (split (cdr list) (- i 1))))
    )
)

(defun sub-list (lst FROM &optional (TO NIL))
    
  (cond
         ((equal TO NIL) (setf TO (list-length lst)))
         ((or 
           (not(<= 1 FROM TO)) 
           (> TO (list-length lst))) (return-from sub-list NIL))
  )
    (cond
         ((= 1 FROM) (split lst TO))
         (t(sub-list (cdr lst) (- FROM 1) (- TO 1)))
     )
   
)

(print "Question 1: ")
(print (sub-list '(1 4 10) 2 3))
(print (sub-list '(1 4 10) 2))
(print (sub-list '(1 7 12) 1 4))
(print (sub-list '(1 7 12) 0 1))
(print (sub-list '(1 6 12) 4 2))
;;(print (sub-list '(1 6 12)))
