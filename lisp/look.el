(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(setq inhibit-startup-message t)

(setq font-lock-maximum-decoration t)

(set-frame-parameter nil 'internal-border-width 20)

(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 240)

(size-indication-mode -1)
(setq doom-modeline-percent-position nil)
