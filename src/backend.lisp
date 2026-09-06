(in-package #:http-encoding-zstd)

(defmethod decode-content-coding ((coding (eql :zstd)) (input stream) &key)
  (compression-protocol:make-decompressing-stream input :algorithm :zstd))

(defmethod decode-content-coding ((coding (eql :zstd)) input &key)
  (compression-protocol:decompress (coerce-to-octets input) :algorithm :zstd))

(defmethod encode-content-coding ((coding (eql :zstd)) (input stream) &key level quality)
  (declare (ignore quality))
  (make-octet-input-stream
   (compression-protocol:compress input :algorithm :zstd :level (or level 3))))

(defmethod encode-content-coding ((coding (eql :zstd)) input &key level quality)
  (declare (ignore quality))
  (compression-protocol:compress (coerce-to-octets input) :algorithm :zstd
                                 :level (or level 3)))
