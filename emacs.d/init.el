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
