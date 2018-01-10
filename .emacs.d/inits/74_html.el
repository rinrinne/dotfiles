;; mode for html

(use-package web-mode
             :ensure t
             :mode (("\\.phtml\\'" . web-mode)
                    ("\\.tpl\\.php\\'" . web-mode)
                    ("\\.[agj]sp\\'" . web-mode)
                    ("\\.as[cp]x\\'" . web-mode)
                    ("\\.erb\\'" . web-mode)
                    ("\\.mustache\\'" . web-mode)
                    ("\\.djhtml\\'" . web-mode)
                    ("\\.html\\'" . web-mode))
             :config
             (setq web-mode-engines-alist
                   '(("php" . "\\.phtml\\'"))))
