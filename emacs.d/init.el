(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(org-babel-load-file "~/.emacs.d/config.org")

(setq cider-cljs-lein-repl
      "(do (user/run)
           (user/browser-repl))")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (virtualenvwrapper js2-mode rainbow-delimiters powerline paredit idle-highlight-mode cider yasnippet web-mode multiple-cursors gruvbox-theme zenburn-theme monokai-theme expand-region glsl-mode company use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
