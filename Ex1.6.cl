;; What happens when you use new-if to compute square roots?
;; Because the arguments are both evaluated before the function is applied
;; the function sqrt-iter will be called recursively
;; without ever checking the predicate condition. This will
;; cause a stack overflow, or whatever common lisp calls it.
