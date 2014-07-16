;; auto-install
;; http://www.emacswiki.org/emacs/download/auto-install.el

(when (require 'auto-install nil t)
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))

;; package.el
;; (install-elisp "http://bit.ly/pkg-el23")
(when (require 'package nil t)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.milkbox.net/packages/"))
;;  (add-to-list 'package-archives
;;	       '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
	       '("ELPA" . "http://tromey.com/elpa/"))
  (package-initialize))
