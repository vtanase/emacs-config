;; Configuration for java code

(defun my-java-mode-fn ()
  (setq indent-tabs-mode nil)
  (setq c-basic-offset 2)
  ; yasnipet
  (require 'yasnippet)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets/")
)

(add-hook  'java-mode-hook 'my-java-mode-fn t)

(provide 'vt-java)