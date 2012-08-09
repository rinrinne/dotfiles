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
(setq user-public-repository-directory (concat user-emacs-directory "public_repository/"))

;; init-loader
(require 'init-loader)
(init-loader-load (concat user-emacs-directory "conf"))
