(add-to-list 'load-path "~/.emacs.d/lisp")

(setq custom-file "~/.emacs.d/lisp/personal/custom.el")
(load "personal/custom")
(load "personal/theme")

(let ((custom "~/.emacs_local"))
  (when (file-exists-p custom)
    (load-file custom)))
