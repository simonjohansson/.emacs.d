;; ace jump mode, yo.
(require 'ace-jump-mode)
(define-key global-map (kbd "M-SPC") 'ace-jump-mode)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
