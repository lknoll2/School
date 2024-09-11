#lang scheme

;;;-----------------------------------------------------------------------------
;;; tag.scm
;;; Gets the current time from the operating system and prints a
;;; time-appropriate greeting
;;; Run using mzscheme tag.scm
;;;
;;; Useful references:
;;;   - https://docs.racket-lang.org/reference/time.html
;;;   - https://docs.racket-lang.org/reference/structures.html
;;;   - https://docs.racket-lang.org/reference/if.html
;;;-----------------------------------------------------------------------------

;; Here we figure out what our of the day it is
(define curr-hour
  [date-hour (seconds->date [current-seconds])] ; Can you figure out what date-hour does?
  )

;; Here we print a greeting based on the current hour
(cond ; A fancy alternative to cascading if-else statements
  [(< curr-hour 12) (display "Good morning, nerd!\n")]
  [(< curr-hour 18) (display "Good afternoon, nerd!\n")]
  [else (display "Good evening, nerd!\n")] ; Why are there parens and square brackets?
  )