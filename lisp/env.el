;; Setup my PATH.
(setenv "PATH" (concat
		(getenv "PATH") ":"
		(expand-file-name "~/bin") ":"
		"/usr/local/bin"))

(setq default-directory (expand-file-name "~/"))
