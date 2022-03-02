;QUESTION 2
;https://rextester.com/YKQ3951

(defun split (list i) 
    (cond
        ((<= i 0) ())
        ((null list)(list))
        (t (cons (car list) (split (cdr list) (- i 1))))
    )
)

(defun sub-list2 (lst FROM &optional (TO NIL))
    
     (if (equal TO NIL)
        (setf TO (list-length lst)))

    (if (> FROM TO)
        (return-from sub-list2 NIL))
    
    (if (< FROM 1)
        (setf FROM 1))
    
    (if (> TO (list-length lst))
        (setf TO (list-length lst)))
   
    (cond
         ((= 1 FROM) (split lst TO))
         (t(sub-list2 (cdr lst) (- FROM 1) (- TO 1)))
     )
   
)

(print "Question 2: ")
(print (sub-list2 '(1 4 10 5 6 7) 2 4))
(print (sub-list2 '(1 4 10) 2))
(print (sub-list2 '(1 7 12) 1 4))
(print (sub-list2 '(1 7 12) 0 1))
(print (sub-list2 '(1 6 12) 4 2))
;;(print (sub-list '(1 6 12)))