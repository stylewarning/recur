;;;; recur.lisp
;;;; Author: Robert Smith -- 2012

(in-package #:recur)

(defmacro recur (name (&rest bindings) &body body)
  "A macro imitating Scheme's named-LET."
  (check-type name symbol)
  (assert (every 'symbolp (mapcar 'first bindings))
          (bindings)
          "Tried to bind datum to non-symbol ~S."
          (find-if-not 'symbolp (mapcar 'first bindings)))
  `(labels ((,name ,(mapcar 'first bindings)
              ,@body))
     (,name ,@(mapcar 'second bindings))))
