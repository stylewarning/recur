;;;; recur.asd
;;;; Copyright (c) 2012 Robert Smith

(asdf:defsystem #:recur
  :serial t
  :description "A simple alternative to Scheme's named-LET."
  :author "Robert Smith <quad@symbo1ics.com>"
  :license "Public Domain"
  :components ((:file "package")
               (:file "recur")))

