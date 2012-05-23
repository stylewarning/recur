                                RECUR

               A simple library for Scheme's named LET.


RECUR is a simple Lisp alternative Scheme's "named-LET". Scheme allows
one to iterate like the following:

(define (factorial n)
  (let fact ((n    n)
             (prod 1))
    (if (zero? n)
        prod
        (fact (- n 1)
              (* n prod)))))

This is a useful idiom for Lisp as well. With this library, it is written

(defun factorial (n)
  (recur fact ((n    n)
               (prod 1))
    (if (zerop n)
        prod
        (fact (1- n)
              (* n prod)))))          

This library exports a single macro, RECUR:RECUR, which is a
replacement for Scheme's named-LET. The only caveat is that tail
recursion is not strictly supported, though many implementations do
support it (with some combination of OPTIMIZE declarations).
