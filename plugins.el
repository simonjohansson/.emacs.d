;; ace jump mode, yo.
(require 'ace-jump-mode)
(define-key global-map (kbd "M-SPC") 'ace-jump-mode)

(require 'multiple-cursors)
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)
