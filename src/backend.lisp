(in-package #:http-encoding-zstd)

(defmethod decode-content-coding ((coding (eql :zstd)) (input stream) &key)
  (cl-stack-zstd:make-decompressing-stream input))

(defmethod decode-content-coding ((coding (eql :zstd)) input &key)
  (cl-stack-zstd:decompress (coerce-to-octets input)))

(defmethod encode-content-coding ((coding (eql :zstd)) (input stream) &key level quality)
  (declare (ignore quality))
  (cl-stack-zstd:make-compressing-stream input :level (or level 3)))

(defmethod encode-content-coding ((coding (eql :zstd)) input &key level quality)
  (declare (ignore quality))
  (cl-stack-zstd:compress (coerce-to-octets input) :level (or level 3)))
