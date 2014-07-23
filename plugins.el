;; ace jump mode, yo.
(require 'ace-jump-mode)
(define-key global-map (kbd "M-SPC") 'ace-jump-mode)

(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
