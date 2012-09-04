;;;; recur.asd
;;;; Author: Robert Smith -- 2012

(asdf:defsystem #:recur
  :serial t
  :description "A simple alternative to Scheme's named-LET."
  :author "Robert Smith <quad@symbo1ics.com>"
  :license "Public Domain. See LICENSE."
  :components ((:file "package")
               (:file "recur")))

