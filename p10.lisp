(defun skip-repeating-seq (iter prev)
  (let ((curr (first iter)))
    (if (or (null iter) (not (eql curr prev)))
        iter
        (skip-repeating-seq (rest iter) curr))))

(defun count-repeating-seq (iter prev)
  (let ((curr (first iter)))
    (if (or (null iter) (not (eql curr prev)))
        0
        (1+ (count-repeating-seq (rest iter) curr)))))


(defun at-encode (iter)
  (if (null iter)
      nil
      (let ((curr (first iter)))
        (cons (list (count-repeating-seq iter curr)
                    curr)
              (at-encode (skip-repeating-seq iter curr))))))

(skip-repeating-seq '(a a a b b b) 'a)
(count-repeating-seq '(a a a a b b b) 'a)
(at-encode '(a a a b c c c nil nil nil))
