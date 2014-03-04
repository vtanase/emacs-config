;; Configuration for java code

(defun my-java-mode-fn ()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2)

  ;; eclim and yasnippet don't really play well together for me
  ; yasnipet
;;  (require 'yasnippet)
;;  (yas/initialize)
;;  (yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets/")
)

(add-hook  'java-mode-hook 'my-java-mode-fn t)

;; eclim configuration
(require 'eclim)
(require 'eclimd)
(global-eclim-mode)
;; path variables to set for eclim
(custom-set-variables
 '(eclim-eclipse-dirs '("/opt/eclipse/eclipse-4.3.1")))
(custom-set-variables
 '(eclim-executable '"/opt/eclipse/eclipse-4.3.1/eclim"))

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; Autocomplete mode for eclim
;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)
;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(provide 'vt-java)