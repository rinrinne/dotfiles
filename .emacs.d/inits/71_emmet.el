;; emmet
;;
(use-package emmet-mode
             :ensure t
             :init
             (add-hook 'sgml-mode-hook 'emmet-mode)
             (add-hook 'html-mode-hook 'emmet-mode)
             (add-hook 'nxml-mode-hook 'emmet-mode)
             (add-hook 'text-mode-hook 'emmet-mode)
             :config
             (bind-key "C-z" 'emmet-expand-line emmet-mode-keymap))
