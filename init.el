;;; package --- Shane's Emacs Config
;;; Commentary:
;;; Not sure what to say here
;;; Code:

(require 'package)

(add-to-list 'package-archives
    '("MELPA" .
      "http://melpa.org/packages/"))

(setq package-enable-at-startup nil)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; Evaluating the file below will result in some variables being set.
;; Instead of cluttering up this file, create a new file that can be ignored.
(setq custom-file "~/.emacs.d/generated.el")

;; Load the rest of the configuration using babel
(org-babel-load-file "~/.emacs.d/config.org")
;;; init.el ends here
