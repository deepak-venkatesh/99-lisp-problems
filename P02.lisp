#|

P02 (*) Find the last but one box of a list.

Example:
* (my-but-last '(a b c d))
(C D)

|#

;; Probably this means to get second last element but the example shows last two. 

;; Simple way to get last two elements

(defun my-but-last-simple-two (x)
  (let ((y (reverse x)))
    (list (car (cdr y)) (car y))))

(defun my-but-last-simple-one (x)
  (let ((y (reverse x)))
    (car (cdr y))))
