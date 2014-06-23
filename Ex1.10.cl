Exercise 1.10

(defun A (x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        ('t (A (- x 1)
               (A x (- y 1))))))

;; What are the values of the following expressions?

(A 1 10)
;; 1024

(A 2 4)
;; 65536

(A 3 3)
;; 65536

(defun f (n)
  (A 0 n))
;; (f n) computes 2n

(defun g (n)
  (A 1 n))
;; (g n) computes pow(2,n)
(g 16)
(defun h (n)
  (A 2 n))
(h 1)
;; 2
(h 2)
;; 4
(h 3)
;; 16
(h 4)
;; 65536

;; pow(2,pow(2,n-1))

(defun k (n)
  (* 5 n n))
;; (k n) computes 5*pow(n,2)
