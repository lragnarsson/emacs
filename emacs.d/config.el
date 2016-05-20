
(load-file "~/Development/emacs/emacs.d/sensible-defaults.el")
(sensible-defaults/use-all-settings)
(sensible-defaults/bind-commenting-and-uncommenting)
(sensible-defaults/bind-home-and-end-keys)

(setq user-full-name "Lage Ragnarsson"
      user-mail-address "lage.ragnarsson@gmail.com"
      calendar-latitude 58.41
      calendar-longitude 15.62
      calendar-location-name "Linköping, Sweden")

(require 'use-package)
(use-package company :ensure t)
(use-package expand-region :ensure t)
(use-package key-chord :ensure t)
(use-package monokai-theme :ensure t)
(use-package multiple-cursors :ensure t)
(use-package web-mode :ensure t)
(use-package yasnippet :ensure t)

(load-library "iso-transl")

(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-linum-mode t)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;(load-theme 'zenburn t)
(load-theme 'monokai t)

(require 'whitespace)
(setq whitespace-style '(face tabs tab-mark trailing))
(global-whitespace-mode 1)

(show-paren-mode)
(global-hl-line-mode 1)

(global-prettify-symbols-mode t)

(set-face-foreground 'highlight nil )
(set-face-attribute 'region nil :background "#666")

;GLSL
(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;Tabs
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

;Tramp
(setq tramp-default-method "ssh")

(global-set-key "\M-i" 'delete-indentation)

(global-set-key "\M-n" "\C-u1\C-v") ;Scroll down
(global-set-key "\M-p" "\C-u1\M-v") ;Scroll up

;Key-chords
(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "fg" 'iy-go-to-char)
(key-chord-define-global "df" 'iy-go-to-char-backward)

;Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(add-hook 'after-init-hook 'global-company-mode)

(setq org-ellipsis "⤵")
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)
(setq org-html-postamble nil)
