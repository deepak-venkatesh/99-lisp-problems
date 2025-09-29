#|

P08 (**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example:
* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)

|#

;; assuming its not a nested list else we could use logic of problem 07 to flatten a nested list first

(defun compress (x)
  (cond ((null x) nil)
	((equal (first x) (second x))
	 (compress (rest x)))
	(t (cons (first x) (compress (rest x))))))
