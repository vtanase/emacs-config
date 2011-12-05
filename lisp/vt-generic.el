;; File to hold generic setting independent of mode

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; no tabs
(setq-default indent-tabs-mode)

;; move M-x to C-x C-m
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; C-w for backward-kill-word
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; no backup files
(setq make-backup-files nil)
;;disable auto save
(setq auto-save-default nil)

;; disable scroll bars, menus, etc
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; whitespace mode
(global-whitespace-mode 1)
;; make whitespace-mode use just basic coloring
(setq whitespace-style (quote
  (space-mark tab-mark newline-mark)))

;; line numbers
(global-linum-mode 1)

;;ido mode
(ido-mode t)
(setq ido-enable-flex-matching t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; unique buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; use f4 for goto-line
(global-set-key [f4] 'goto-line)
;; bg color
(setq default-frame-alist
      (append default-frame-alist
       '((foreground-color . "Gray")
         (background-color . "Black")
         (cursor-color . "SkyBlue")
         )))

(provide 'vt-generic)