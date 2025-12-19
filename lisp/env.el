(setq default-directory (expand-file-name "~/"))

(setq backup-by-copying t		; don't clobber symlinks
      backup-directory-alist '(("." . "~/.saves")) ; don't litter my fs tree
      delete-old-versions t kept-new-versions 6 kept-old-versions 2 version-control t)
					; use versioned backups

;; Switch functionality between alt and cmd on mac.
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)


