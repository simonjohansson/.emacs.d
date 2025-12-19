(require 'find-func)

(which-key-mode)

(use-package
  darcula-theme
  :ensure t
  :straight t
  :config (set-frame-font "Monaco-22")
  (load-theme 'darcula
	      :t))

(use-package
  ace-jump-mode
  :ensure t
  :straight t
  :bind ("C-." . ace-jump-mode))

(use-package
  exec-path-from-shell
  :ensure t
  :straight t
  :config (when (memq window-system '(mac ns x))
	    (exec-path-from-shell-initialize)))

(use-package
  nyan-mode
  :ensure t
  :straight t
  :config (nyan-mode))

(use-package
  rainbow-delimiters
  :ensure t
  :straight t
  :config (rainbow-delimiters-mode))

(use-package
  magit
  :ensure t
  :straight t)

(use-package
  yaml-mode
  :ensure t
  :straight t
  :config (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

(use-package
  helm
  :ensure t
  :straight t
  :demand
  :bind (("M-x" . helm-M-x)
	 ("C-x b" . helm-buffers-list)
	 ("C-x c o" . helm-occur))
  :config (helm-mode 1))

(use-package
  comment-dwim-2
  :ensure t
  :straight t
  :bind (("M-;" . comment-dwim-2)
	 ("s-/" . comment-dwim-2)))

(use-package
  elisp-format
  :ensure t
  :straight t)

(use-package vterm
    :ensure t
    :commands vterm)
