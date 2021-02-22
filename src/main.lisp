(in-package :cl-user)

(defpackage l-banner
  (:use :cl :l-banner.utils :l-banner.chars :l-banner.canvas)
  (:export
   #:print-string))

(in-package :l-banner)

;; ---------------------------------------------------------
;; There is a pleasure in the pathless woods,
;; There is a rapture on the lonely shore,
;; There is society, where none intrudes,
;; By the deep Sea, and music in its roar:
;; I love not Man the less, but Nature more,
;; From these our interviews, in which I steal
;; From all I may be, or have been before,
;; To mingle with the Universe, and feel
;; What I can ne’er express, yet cannot all conceal.
;;
;;       - Lord Byron, Childe Harold's Pilgrimage
;; ---------------------------------------------------------

(defun print-string (s)
  (let ((*c* (make-instance 'cl-banner)))
    (loop for c across (string-upcase s)
          do (append-char *c* (gen-char c)))
    (print-canvas *c*)
    '()))
