
;; initialization file

(add-to-list 'load-path' "~/.emacs.d/lisp/")
(add-to-list 'load-path' "~/.emacs.d/site-lisp/")
(add-to-list 'load-path' "~/.emacs.d/site-lisp/cc-mode/")
(add-to-list 'load-path' "~/.emacs.d/site-lisp/yasnippet/")
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; nxhtml
;;(load "~/.emacs.d/site-lisp/nxhtml/autostart.el")
;;(setq mumamo-background-colors nil)

(require 'vt-generic)

(require 'vt-csharp)

(require 'vt-java)

(require 'vt-groovy)

;;(require 'vt-php)

(require 'vt-windows)

(require 'vt-package)
