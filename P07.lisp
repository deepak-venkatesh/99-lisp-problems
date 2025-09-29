#|

(**) Flatten a nested list structure.
Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

Example:
* (my-flatten '(a (b (c d) e)))
(A B C D E)

Hint: Use the predefined functions list and append.

|#

;; The same question is there in Prof Touretzky's Book in Chapter 8 on recursion Problem 8.43
;; The solution below is probably slightly better than what is provided in the book


(defun flatten (x)
  (cond ((null x) nil)
	((atom x) (list x))
	(t (append (flatten (car x)) (flatten (cdr x))))))
