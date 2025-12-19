(setq straight-use-package-by-default t)

(require 'find-func)

(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :config
  (load-theme 'doom-one t))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom
  (doom-modeline-buffer-file-name-style 'relative-from-project)
  (doom-modeline-major-mode-icon t))

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

(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  (setq which-key-idle-delay 0.3)
  (setq which-key-popup-type 'side-window))

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
