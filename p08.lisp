(defun compress (l)
  (labels ((compress-recurse (_l _prev)
             (if (null _l)
                 nil
                 (if (eql (first _l) _prev)
                     (compress-recurse (rest _l) (first _l))
                     (cons 
                       (first _l)
                       (compress-recurse (rest _l) (first _l)))))))
    (compress-recurse l nil)))
