;;; emacs configuration file

;; load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; paths
(add-to-load-path "elisp" "conf" "auto-install" "public_repos")

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
