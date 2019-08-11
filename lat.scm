(define lat?
  (lambda (l)
    (cond
    ((null? l) #t)
    ((atom? (car l)) (lat? (cdr l)))
    (else #f))))

(define atom?
  (lambda (y)
  (and (not (pair? y)) (not (null? y)))))
(print (lat? '(apple)))
(print (lat? '()))
(print (lat? '((apple))))
