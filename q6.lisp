; Q6
(defun depth (&optional lst)
    (cond
        ((equal lst NIL) (return-from depth 0))
        ((listp lst) (+ 1 (reduce #'max (mapcar #'depth lst))))
        (t (return-from depth 0))))
    
(print (depth NIL))
(print (depth 1))
(print (depth '(1)))
(print (depth '((2))))
(print (depth '((2)(3 (6))(4))))