(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; YAML-mode
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; Auto wrap lines in text mode plz
(add-hook 'text-mode-hook 'turn-on-auto-fill)
