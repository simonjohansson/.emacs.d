;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file (expand-file-name "straight/repos/straight.el/bootstrap.el"
					user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer (url-retrieve-synchronously
			  "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el" 'silent 'inhibit-cookies)
(goto-char (point-max))
(eval-print-last-sexp)))
(load bootstrap-file nil 'nomessage))

(setq package-enable-at-startup nil)

(straight-use-package 'use-package)

(use-package
  el-patch
  :straight t)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(load-library "packages")
(load-library "env")
(load-library "look")
(load-library "hooks")
