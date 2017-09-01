(package-initialize)

(load-file (concat (file-name-directory user-emacs-directory)
	"core/core-load-paths.el"))

(setq use-package-always-ensure t)
(setq gc-cons-threshold most-positive-fixnum)

(require 'core-spacelite)
(require 'spacelite-base)
(require 'spacelite-langs)
(require 'spacelite-utils)

(spacelite/init)
(spacelite/init-base)
(spacelite/init-langs)
(spacelite/init-utils)

(use-package exec-path-from-shell :defer t :config
	(when (memq window-system '(mac ns x))
		(exec-path-from-shell-initialize)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (google-this markdown-mode deft highlight-parentheses esup centered-cursor-mode linum-relative exec-path-from-shell zerodark-theme which-key evil bind-map use-package)))
 '(with-editor-emacsclient-executable "/usr/local/bin/emacsclient"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
