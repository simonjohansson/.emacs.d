;; Add my ~/bin to the path
(setenv "PATH" (concat (getenv "PATH") ":/home/simon/bin"))
(setq exec-path (append exec-path '("/home/simon/bin")))

;; Set default-directory to ~/ instead of /. Since Im using systemd
;; to start the emacs daemon.
(setq default-directory "~/")
