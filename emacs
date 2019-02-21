;;; possibly put no-byte-compile flag, but doesn't work on cade
(setf load-prefer-newer t)
(package-initialize)
(setq package-enable-at-startup nil)

;;(add-to-list 'load-path "~/.emacs.d/plugins/packed")
;;(add-to-list 'load-path "~/.emacs.d/plugins/no-littering")
;;(require 'no-littering)
;; not working on cade
;;(add-to-list 'load-path "~/.emacs.d/plugins/auto-compile")
;;(require 'auto-compile)
;;(auto-compile-on-load-mode)
;;(auto-compile-on-save-mode)


(load-file "~/.emacs.d/init.el")
