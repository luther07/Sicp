(defun cube-root (x)
  (cube-iter 1.0 x))

(defun cube-iter (guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x)
               x)))

(defun good-enough? (guess x)
  (< (/ (abs (- guess (improve guess x)))
         guess)
     0.0001))

(defun improve (guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(defun square (x)
  (* x x))

(cube-root 8)