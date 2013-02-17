(require 'php-mode)
(require 'flymake)


(defun my-php-mode-init ()
  "Set some buffer-local variables."
  (setq case-fold-search t)
  (setq indent-tabs-mode nil)
  (setq fill-column 78)
  (setq c-basic-offset 2)
  (c-set-offset 'arglist-cont 0)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'case-label 2)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'arglist-close 0)
  (require 'yasnippet)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets/"))
(add-hook 'php-mode-hook 'my-php-mode-init)


(defun my-php-hook-function ()
  (set (make-local-variable 'compile-command) (format "php -f %s -l" (buffer-file-name))))
(add-hook 'php-mode-hook 'my-php-hook-function)

;;This is the error format for : php -f somefile.php -l 
(add-to-list 'flymake-err-line-patterns
  '("\(Parse\|Fatal\) error: +\(.?\) in \(.?\) on line \([0-9]+\)$" 3 4 nil 2))

(add-hook 'php-mode-hook (lambda () (flymake-mode 1)))

(provide 'vt-php)