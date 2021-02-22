(in-package :cl-user)

(defpackage l-banner.canvas
  (:use :cl)
  (:export
   #:cl-banner
   #:clear-canvas
   #:print-canvas
   #:append-char))
(in-package :l-banner.canvas)

(defparameter *canvas-height* 8)

(defparameter *empty-canvas*
  `(,@(let (res)
        (dotimes (i *canvas-height*) (push "" res))
        res)))

(defclass cl-banner ()
  ((canvas
    :initform *empty-canvas*)))

(defmethod clear-canvas ((c cl-banner))
  (with-slots (canvas) c
    (setf canvas *empty-canvas*)))

(defmethod print-canvas ((c cl-banner))
  (mapcar
   #'(lambda (s) (format t "~A~%" s))
   (slot-value c 'canvas)))

(defmethod append-char ((c cl-banner) char-matrix)
  (with-slots (canvas) c
    (setf canvas
          (loop for i in (slot-value c 'canvas)
                for j in char-matrix
                collect (concatenate 'string i j)))))
