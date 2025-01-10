;;; package --- Shane's Emacs Configuration
;;; Commentary:
;;; Not sure what more to say here.  Have a nice day.
;;; Code:

;; This is hopefully temporary. The code inserted into generated.el needs to be
;; run before the function call below, specifically so that the value for
;; custom-safe-themes is respected.
(setq custom-file (expand-file-name "generated.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

(org-babel-load-file "~/.emacs.d/readme.org")
;;; init.el ends here
