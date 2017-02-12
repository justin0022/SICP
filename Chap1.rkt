
#lang racket
(require test-engine/racket-tests)

;;; 1.1
#|
10
12
8
3
6
nothing
nothing
19
f
4
16
6
16
|#

;;; 1.2
;(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2)(- 2 7)))

;;; 1.3
(define (threeNumsSumTwoLarger a b c)
  (cond ((and (< a b) (< a c)) (* b c))
        ((and (< b a) (< b c)) (* a c))
        ((and (< c a) (< c b)) (* a b))))

(check-expect (threeNumsSumTwoLarger 1 2 3) 6)
(check-expect (threeNumsSumTwoLarger 6 2 3) 18)
(check-expect (threeNumsSumTwoLarger -6 2 3) 6)
(check-expect (threeNumsSumTwoLarger 1 2 2) 4)
(check-expect (threeNumsSumTwoLarger 4 12 2) 48)

;;; 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-expect (a-plus-abs-b 5 6) 11)
(check-expect (a-plus-abs-b 5 -6) 11)
(check-expect (a-plus-abs-b -5 -6) 1)


;; This function takes as input two integers a and b and returns a + the absolute value of b


;;; 1.5
;; don't want to do this question, sorry.

;;; 1.6
;; don't want to do this question, sorry.

;;; 1.7
#|
(define (square x) (* x x))

(define (sqrt-iter guess x) (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 0.0000005)
|#

;;; 1.8
(define (cbrt x) (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (square x) (* x x))
(define (cube x) (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) 
        (* 2 guess)) 
     3))

(cbrt 27)
         
(test)