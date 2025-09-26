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

;; Recursive way using if
(defun last-element-recurse-if (x)
  (if (null (cdr x))
      (car x)
      (last-element-recurse-if (cdr x))))

;; Recursive way using cond
(defun last-element-recurse-cond (x)
  (cond
    ((null (cdr x)) (car x))
    (t (last-element-recurse-cond (cdr x)))))
