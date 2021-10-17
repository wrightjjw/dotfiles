(setq package-file (expand-file-name "package.el" user-emacs-directory))
(when (file-exists-p package-file)
  (load package-file))

;; line numbers
(global-display-line-numbers-mode)

;; disable GUI controls
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; font
(set-face-attribute 'default nil :height 110)

;; Scratch buffer
(setq inhibit-startup-message t
      initial-scratch-message "#+TITLE: Scratch Buffer\n\n"
      initial-major-mode 'org-mode)
(mapc #'define-prefix-command
      '(evil-application-map
        evil-buffer-map
        evil-error-map
        evil-file-map
        evil-git-map
        evil-global-leader-map
        evil-insert-map
        evil-jump-map
        evil-option-map
        evil-search-map
        evil-tab-map))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e8a0c94af8c0eeec7ae0f1633d29098ea722e5765f1e9c67b49da6f3414b9bfe" default))
 '(package-selected-packages
   '(haskell-mode lsp-mode org-bullets evil mood-one-theme use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
