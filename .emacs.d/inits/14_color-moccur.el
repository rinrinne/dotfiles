;; color-moccur
;; auto-install-from-emacswiki color-moccur.el

(when (require 'color-moccur nil t)
  (define-key global-map (kbd "M-o") 'occur-by-moccur)
  (setq moccur-split-word t)
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")

  (when (and (executable-find "cmigemo")
	     (require 'migemo nil t))
    (setq moccur-use-migemo t)))
