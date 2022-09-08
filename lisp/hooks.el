(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Auto wrap lines in text mode plz
(add-hook 'text-mode-hook 'turn-on-auto-fill)
