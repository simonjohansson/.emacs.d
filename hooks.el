(add-hook 'before-save-hook 'delete-trailing-whitespace)

(dolist (a-mode '(emacs-lisp-mode-hook clojure-mode-hook))
  (add-hook a-mode 'show-paren-mode)
  (add-hook a-mode 'rainbow-delimiters-mode)
  (add-hook a-mode 'enable-paredit-mode))
