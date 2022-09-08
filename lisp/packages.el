(use-package darcula-theme
  :ensure t
  :straight t
  :config
  (set-frame-font "Monaco-22")
  (load-theme 'darcula :t))

(use-package ace-jump-mode
  :ensure t
  :straight t
  :bind ("C-." . ace-jump-mode))

(use-package exec-path-from-shell
  :ensure t
  :straight t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

(use-package nyan-mode
  :ensure t
  :straight t
  :config
  (nyan-mode))

(use-package rainbow-delimiters
  :ensure t
  :straight t
  :config
  (rainbow-delimiters-mode))

(use-package magit
  :ensure t
  :straight t)


(use-package yaml-mode
  :ensure t
  :straight t
  :config
  (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode)))

(use-package org-roam
  :ensure t
  :straight t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/RoamNotes")
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         :map org-roam-dailies-map
         ("Y" . org-roam-dailies-capture-yesterday)
         ("T" . org-roam-dailies-capture-tomorrow))
  :bind-keymap
  ("C-c n d" . org-roam-dailies-map)
  :config
  (require 'org-roam-dailies) ;; Ensure the keymap is available
  (org-roam-db-autosync-mode))

(use-package helm
  :ensure t
  :straight t
  :demand
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-buffers-list)
	 ("C-x c o" . helm-occur))
  :config (helm-mode 1))

(use-package comment-dwim-2
  :ensure t
  :straight t
  :bind (("M-;" . comment-dwim-2)
	 ("s-/" . comment-dwim-2)))
