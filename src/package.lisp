(defpackage #:http-encoding-zstd
  (:use #:cl #:http-protocol)
  (:export #:+codings+))
(in-package #:http-encoding-zstd)

(defparameter +codings+ '(:zstd)
  "Codings this backend implements.")
