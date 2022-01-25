(defun list-size (iter)
  (if (endp iter)
      0
      (1+ (list-size (cdr iter)))))

(defun list-size (iter)
  (if (endp iter)
      0
      (1+ (list-size (rest iter)))))

(defun list-size (iter)
  (cond
    ((endp iter)    0)
    (t              (1+ (list-size (rest iter))))))
