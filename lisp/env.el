;; Setup my PATH.
(setenv "PATH" (concat
		(getenv "PATH") ":"
		(expand-file-name "~/bin") ":"
		"/usr/local/bin"))

(setq exec-path (append exec-path '(expand-file-name "~/bin")))

(setq default-directory (expand-file-name "~/"))
