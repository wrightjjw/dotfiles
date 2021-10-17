;; setup package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; setup ido
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)

;; setup use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)

;; lsp-mode
;; https://emacs-lsp.github.io/lsp-mode/page/installation/
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (python-mode . lsp)
  :commands (lsp lsp-deferred))

;; -----
;; LANGS
;; -----

;; haskell-mode
(use-package haskell-mode)

;; ORG
(require 'org)

;; org-superstar
(use-package org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; smex
(use-package smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-x") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; evil
(use-package evil
  :config
  (evil-mode 1)
  )

;; theme (mood one)
(use-package mood-one-theme
  :init (load-theme 'mood-one t))
(mood-one-theme-arrow-fringe-bmp-enable)
