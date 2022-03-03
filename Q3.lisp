;QUESTION 3
;https://rextester.com/HDND6393

(defun reversing (lst)
    (cond 
        ((null lst) '())
        (t (append (reversing (cdr lst)) (list (car lst))))))

(defun split (list i) 
    (cond
        ((<= i 0) ())
        ((null list)(list))
        (t (cons (car list) (split (cdr list) (- i 1))))
    )
)

(defun sub-list3 (lst FROM &optional (TO NIL))
    
     (if (equal TO NIL)
        (setf TO (list-length lst)))
    
    (if (> FROM TO)
        (progn
            (setf TEMPTO TO)
            (setf TO FROM)
            (setf FROM TEMPTO)))

    (if (> FROM TO)
        (return-from sub-list3 NIL))
    
    (if (< FROM 1)
        (setf FROM 1))
    
    (if (> TO (list-length lst))
        (setf TO (list-length lst)))
   
    (cond
         ((= 1 FROM) (reversing(split lst TO)))
         (t(sub-list3 (cdr lst) (- FROM 1) (- TO 1)))
     )
   
)

(print "Question 3: ")
(print (sub-list3 '(1 4 10) 3 2))
(print (sub-list3 '(1 4 10) 3))
(print (sub-list3 '(1 7 12) 4 0))
;(print (sub-list '(1 6 12)))
