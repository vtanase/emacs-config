;; Configuration for C# code

;; file type
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
   (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;; hook function for setting up C# mode
(defun my-csharp-mode-fn ()
  "function that runs when csharp-mode is initialized for a buffer."
  (turn-on-auto-revert-mode)
  (setq indent-tabs-mode nil)
  ; Set indentation level to 4 spaces (instead of 2)
  (setq c-basic-offset 4)
  ; Set the extra indentation before a substatement (e.g. the opening brace in
  ; the consequent block of an if statement) to 0 (instead of '+)
  (c-set-offset 'substatement-open 0)
  ; Yasnippet
  (require 'yasnippet)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets/")
  )
(add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)

(provide 'vt-csharp)