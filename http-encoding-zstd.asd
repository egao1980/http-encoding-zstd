(defsystem "http-encoding-zstd"
  :version "0.1.0"
  :description "zstd Content-Encoding backend for http-protocol (cl-stack-zstd)"
  :author "egao1980"
  :license "MIT"
  :depends-on ("http-protocol" "cl-stack-zstd")
  :serial t
  :pathname "src"
  :components ((:file "package")
               (:file "backend"))
  :in-order-to ((test-op (test-op "http-encoding-zstd/tests"))))

(defsystem "http-encoding-zstd/tests"
  :depends-on ("http-encoding-zstd" "http-protocol/conformance" "rove")
  :pathname "tests"
  :serial t
  :components ((:file "package")
               (:file "conformance"))
  :perform (test-op (o c)
             (unless (symbol-call :http-encoding-zstd/tests :run-conformance)
               (error "http-protocol/conformance failed for zstd"))))
