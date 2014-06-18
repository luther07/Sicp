(defun sqrt (x)
  (sqrt-iter 1.0 x))

(defun sqrt-iter (guess x)
  (if (new-good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(defun good-enough? (guess x)
  (< (abs (- (square guess) x)) 0.001))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun average (x y)
  (/ (+ x y) 2))

(defun square (x)
  (* x x))

;; Using a constant number 0.001 to define when
;; you are close enough for small numbers will 
;; completely fail when calculating sqrt of numbers near
;; or smaller than 0.001. As soon as the guess
;; is below 0.001, it is close enough and no
;; further guesses are attempted.
(sqrt 0.00001)
;; returns 0.031356
(square 0.031356)
;; returns just lesst than 0.001

;; Using same strategy for large numbers,
;; the computations may not include any
;; digits below zero. The computations are
;; not precise enough, thus will never get
;; within 0.001 and there will be something
;; like a stack overflow, clisp gives error
;; "Lisp nesting exceeds max-lisp-eval-depth"

(square (sqrt 999999999934434323.2))

;; new-good-enough? works better for small numbers
;; and large numbers. It no longer throws an error
;; for large numbers. It's not perfect for large
;; numbers, but it's better and we can control
;; the accuracy better.
(defun new-good-enough? (guess x)
  (< (/ (abs (- guess 
                (improve guess x))) 
        guess)
     0.0001))