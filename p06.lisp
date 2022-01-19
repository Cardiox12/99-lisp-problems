#|(defun list-is-palindrome (l)|#
  #|(let ((size (length l)))|#
    #|(labels ((list-is-palindrome-recurse (la lb)|#
               #|(if (null la)|#
                   #|size|#
                   #|(funcall|#
                     #|(if (eql (first la) (first lb))|#
                         #|#'1-|#
                         #|#'identity)|#
                     #|(list-is-palindrome-recurse (rest la) (rest lb))))))|#
      #|(list-is-palindrome-recurse l (reverse l)))))|#

#|(defun list-is-palindrome (l)|#
  #|(let ((size (length l)))|#
    #|(labels ((list-is-palindrome-recurse (la lb)|#
               #|(if (null la)|#
                   #|size|#
                   #|(if (eql (first la) (first lb))|#
                       #|(1- (list-is-palindrome-recurse (rest la) (rest lb)))|#
                       #|(identity (list-is-palindrome-recurse (rest la) (rest lb)))))))|#
      #|(zerop (list-is-palindrome-recurse l (reverse l))))))|#

(defun list-is-palindrome (l)
  (labels ((list-is-palindrome-recurse (la lb)
             (if (null la)
                 t
                 (if (eql (first la) (first lb))
                     (list-is-palindrome-recurse (rest la) (rest lb))
                     nil))))
    (list-is-palindrome-recurse l (reverse l))))
