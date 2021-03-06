(in-package :one-more-re-nightmare)

(trivia:defun-match has-literals? (re)
  ((literal _) t)
  ((or (join r s) (either r s) (both r s))
   (or (has-literals? r) (has-literals? s)))
  ((or (invert r)) (has-literals? r))
  (_ nil))

(trivia:defun-match effects (re)
  ((or (start-group _) (end-group _))
   (list re))
  ((join r s)
   (if (has-literals? r)
       (effects r)
       (append (effects r) (effects s))))
  ((or (either r s) (both r s))
   (append (effects r) (effects s)))
  ((invert r) (effects r))
  ((kleene r) (effects r))
  (_ '()))
