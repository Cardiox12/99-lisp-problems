; Old lisp

(defun item-at (iter n)
  (when iter
    (if (zerop n)
        (car iter)
        (item-at (cdr iter) (1- n)))))

(defun item-at (iter n)
  (cond
    ((endp iter)    nil)
    ((zerop n)      (car iter))
    (t              (item-at (cdr iter) (1- n)))))

; New lisp
(defun item-at (iter n)
  (when iter
    (if (zerop n)
        (first iter)
        (item-at (rest iter) (1- n)))))


(defun item-at (iter n)
  (cond
    ((endp iter)    nil)
    ((zerop n)      (first iter))
    (t              (item-at (rest iter) (1- n)))))
