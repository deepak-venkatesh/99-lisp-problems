#|

P03 (*) Find the K'th element of a list.
The first element in the list is number 1.
Example:
* (element-at '(a b c d e) 3)
C

|#

;; simple solution

(defun element-at (list n)
  (if (= n 1)
      (car list)
      (element-at (cdr list) (- n 1))))
