(* Ex 1.11 Recursive Process *)

(defun f (n)
  (cond ((< n 3)
    n)
    (t (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

(f 2)
;;2 : two
(f 3)
;;4 two plus 2^1
(f 4)
;;11 two plus 2^2 plus 3 ^1
(f 5) 
;;25

(* Ex 1.11 Iterative Process *)

(defun f2 (n)
  (cond ((< n 3)
    n)
    (t (f2-iter n n n 1 1 1))))

(defun f2-iter (x y z a b c)
  (cond ((> x 3)
    (f2-iter (- x 1) y z 1 b c))
  ((> y 3)
    (f2-iter x (- y 2) z a (* 2 b) c))
  ((> z 3)
    (f2-iter x y (- z 3) a b (* 3 c)))
  (t 
    (+ (* a x) (* b y) (* c z)))))

(f2 2)
(f2 3)
(f2 4)
(f2 5)