(in-package :cl-user)

(defpackage l-banner.utils
  (:use :cl)
  (:export
   #:$
   #:->))

(in-package :l-banner.utils)
;;;
;;; pipe like solution based on the "On Lisp" book.
;;;
(defmacro alambda (parms &body body)
  `(labels ((self ,parms ,@body))
     #'self))

(defmacro ablock (tag &rest args)
  `(block ,tag
     ,(funcall (alambda (args)
                        (case (length args)
                          (0 nil)
                          (1 (car args))
                          (t `(let ((it ,(car args))) ;; `it` refs to prev result
                                ,(self (cdr args))))))
               args)))

(defmacro -> (obj &rest forms)
  "Similar to the -> macro from clojure, but with a tweak: if there is
  a $ symbol somewhere in the form, the object is not added as the
  first argument to the form, but instead replaces the $ symbol."
  (if forms
      (if (consp (car forms))
          (let* ((first-form (first forms))
                 (other-forms (rest forms))
                 (pos (position '$ first-form)))
            (if pos
                `(-> ,(append (subseq first-form 0 pos)
                              (list obj)
                              (subseq first-form (1+ pos)))
                     ,@other-forms)
                `(-> ,(list* (first first-form) obj (rest first-form))
                     ,@other-forms)))
          `(-> ,(list (car forms) obj)
               ,@(cdr forms)))
      obj))

