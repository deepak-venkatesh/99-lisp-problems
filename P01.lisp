#|

(*) Find the last box of a list.

Example:
* (my-last '(a b c d))
(D)

|#


;; Easiest way
(defun last-element-reverse (x)
  (car (reverse x)))

;; Another very easy way 
(defun last-element-last (x)
  (car (last x)))

;; Recursive way
(defun last-element-recurse (x)
  (if (null (cdr x))
      (car x)
      (last-element-recurse (cdr x))))
