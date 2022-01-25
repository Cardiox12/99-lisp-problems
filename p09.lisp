; Use reduce ?

(defun at-pack (iter)
  (labels
      ((at-pack-recurse (_iter _acc _prev)
         (if (null _iter)
             (list _acc)
             (let ((curr (first _iter)))
               (if (eql curr _prev)
                   (at-pack-recurse (rest _iter) (cons curr _acc) curr)
                   (cons _acc
                         (at-pack-recurse (rest _iter) (cons curr nil) curr)))))))
    (when iter
      (at-pack-recurse iter nil (first iter)))))
