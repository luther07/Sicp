10
;; 10

(+ 5 3 4)
;; 12

(- 9 1)
;; 8

(/ 6 2)
;; 3

(+ (* 2 4) (- 4 6))
;; 6

(setf a 3)
;; 3

(setf b (+ a 1))
;; 4

(+ a b (* a b))
;; 19

(= a b)
;; nil

(if (and (> b a) (< b (* a b)))
    b
    a)
;; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (t 25))
;; 16

(cond ((= a 1) 1)
      ((= a 2) 2)
      (t 25))

(+ 2 (if (> b a) b a))
;; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (t -1))
   (+ a 1))
;; 16

(/ 
   (+ 
      5 
      4 
     (- 2 (- 3 (+ 6 (/ 4.0 5.0))))) 
   (* 3 
     (- 6 2) 
     (- 2 7)))
;; -.2466666

(defun sum-of-squares-largest-args (a b c)
  (if (> a b)
    (if (> b c)
      (+ a b)
      (+ a c))
    (if (< a c)
      (+ b c)
      (+ a b))))
;; 

(defun p ()
  p)
;; p

(defun test (x y)
  (if (= x 0)
    x
    y))
;; test

(test 0 'p)
;; 0

(test 1 'p)
;; p
