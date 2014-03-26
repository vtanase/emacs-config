;; configuration for controlling firefox from emacs, allows page refresh and other operations when in moz-minor-mode
;; requires the mozrepl plugin to be installed & started in Firefox

(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

(global-set-key (kbd "C-x p")
                (lambda ()
                  (interactive)
                  (comint-send-string (inferior-moz-process)
                                      "BrowserReload();")))g

(add-hook 'javascript-mode-hook 'moz-setup)
(add-hook 'html-mode-hook 'moz-setup)
(add-hook 'css-mode-hook 'moz-setup)

(defun moz-setup()
  (moz-minor-mode 1))

(provide 'vt-moz)