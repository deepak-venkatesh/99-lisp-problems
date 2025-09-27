#|

P06 (*) Find out whether a list is a palindrome.
A palindrome can be read forward or backward; e.g. (x a m a x).

|#

;; simple solution

(defun palindromep (x)
  (equal (reverse x) x))
