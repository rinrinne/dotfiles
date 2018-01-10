;; go-mode
(use-package go-mode
             :mode (("\\.go\\'" . go-mode))
             :config
             (require 'go-autocomplete)
             (require 'flymake-go)
             (require 'go-eldoc)
             (bind-key "M-." 'godef-jump go-mode-map)
             (set-face-attribute 'eldoc-highlight-function-argument nil
                                 :underline t
                                 :foreground "green"
                                 :weight 'bold)
             (go-eldoc-setup))
