(in-package #:http-encoding-zstd/tests)

(defun run-conformance ()
  (http-protocol/conformance:run-for-codings http-encoding-zstd:+codings+))
