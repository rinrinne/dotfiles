;;; emacs configuration file

;; load private settings
(load (expand-file-name (concat user-emacs-directory "init-private.el")) t)

;; package system
(require 'package)
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(unless package-archive-contents
  (package-refresh-contents))

;;; ensure to use use-package
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)

;;; init-loader
(use-package init-loader
             :ensure t
             :config
             (init-loader-load))
