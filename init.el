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

(let ((org-file (expand-file-name "readme.org" user-emacs-directory))
      (el-file (expand-file-name "readme.el" user-emacs-directory)))
  (if (or (not (file-exists-p el-file))
          (file-newer-than-file-p org-file el-file))
      (org-babel-load-file org-file)
    (load el-file)))
;;; init.el ends here
