
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




(test)