;; howm

(setq howm-directory (concat user-emacs-directory "howm"))
(setq howm-menu-lang 'ja)
;(setq howm-file-name-format "%Y/%m/%Y-%m-%d.howm")

(when (require 'howm nil t)
  (define-key global-map (kbd "C-c ,,") 'howm-menu))

;; anything-howm

(when (require 'anything-howm nil t)
  (setq ah:recent-menu-limit 600)
  (global-set-key (kbd "C-2") 'ah:menu-command)
  (global-set-key (kbd "C-3") 'ah:cached-howm-menu)
;;  (setq ah:data-directory "/path/to/directory")

  (defun anything-buffers (&optional prefix)
    (interactive)
    (anything-other-buffer
      '(anything-c-source-buffers+-howm-title
	anything-c-source-recentf
	)
      "*BUffer+File*"))
  (global-set-key (kbd "M-h") 'anything-buffers)
  )
