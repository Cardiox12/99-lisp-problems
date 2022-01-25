; Old lisp
(defun my-last (iter)
  (when iter
    (if (null (cadr iter))
        (car iter)
        (my-last (cdr iter)))))

; New lisp
(defun my-last (iter)
  (when iter
    (if (null (second iter))
        (first iter)
        (my-last (rest iter)))))
