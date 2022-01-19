(defun reverse-list (l)
  (labels ((reverse-list-recurse (acc curr)
             (if (null curr)
                 acc
                 (reverse-list-recurse 
                   (cons (first curr) acc) 
                   (rest curr)))))
    (reverse-list-recurse nil l)))
