;; color-moccur
;; auto-install-from-emacswiki color-moccur.el

(use-package color-moccur
             :ensure t
             :bind (("M-o" . occur-by-moccur))
             :config
             (setq moccur-split-word t)
             (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
             (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
             (when (package-installed-p 'migemo)
               (setq moccur-use-cmigemo t)))
