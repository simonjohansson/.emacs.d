(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Lispy stuff
(dolist (a-mode '(emacs-lisp-mode-hook clojure-mode-hook))
  (add-hook a-mode 'show-paren-mode)
  (add-hook a-mode 'rainbow-delimiters-mode)
  (add-hook a-mode 'enable-paredit-mode)
  (add-hook a-mode '(lambda ()
		      (local-set-key (kbd "RET") 'newline-and-indent))))

;; YAML-mode
(add-hook 'yaml-mode-hook (lambda ()
			    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; Auto wrap lines in text mode plz
(add-hook 'text-mode-hook 'turn-on-auto-fill)
