;; Add my ~/bin to the path
(setenv "PATH" (concat (getenv "PATH") ":" (expand-file-name "~/bin")))
(setq exec-path (append exec-path '(expand-file-name "~/bin")))

(setq default-directory (expand-file-name "~/"))
