;; What happens when you use new-if to compute square roots?
;; Because the arguments are both evaluated before the function is applied
;; the function sqrt-iter will be called infinitely
;; without checking the predicate condition.
