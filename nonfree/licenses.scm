;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2019 Marius Bakke <mbakke@fastmail.com>
;;;
;;; This program is free software; you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

(define-module (nonfree licenses)
  #:use-module (srfi srfi-9)
  #:use-module (guix licenses)
  #:re-export (license? license-name license-uri license-comment
               gpl2)
  #:export (proprietary))

(define-record-type <license>
  (license name uri comment)
  license?
  (name    license-name)
  (uri     license-uri)
  (comment license-comment))

(define* (proprietary uri #:optional (comment ""))
  (license "proprietary"
           uri
           (string-append "This license is PROPRIETARY.  Read the terms in URI "
                          "carefully before redistributing this package.  "
                          comment)))
