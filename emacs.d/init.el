(add-to-list 'load-path "~/.emacs.d/lisp")

(load "personal/theme")

(let ((custom "~/.emacs_local"))
  (when (file-exists-p custom)
    (load-file custom)))
