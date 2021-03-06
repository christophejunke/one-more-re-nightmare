(asdf:defsystem :one-more-re-nightmare
  :depends-on (:trivia :alexandria :babel :trivial-garbage :esrap)
  :serial t
  :components ((:file "package")
               (:file "type")
               (:file "sets")
               (:file "re-types")
               (:file "nullable")
               (:file "prefix")
               (:file "derivative")
               (:file "derivative-classes")
               (:file "effects")
               (:file "syntax")
               (:file "compile-regexp")
               (:file "convert-to-bytes")
               (:file "interface")))
