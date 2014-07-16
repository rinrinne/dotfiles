;; go-mode
(eval-after-load "go-mode"
                 '(progn
                    (require 'go-autocomplete)
                    (require 'flymake-go)
                    (require 'go-eldoc)
                    (set-face-attribute 'eldoc-highlight-function-argument nil
                                        :underline t
                                        :foreground "green"
                                        :weight 'bold)
                    (go-eldoc-setup)
                    (define-key go-mode-map (kbd "M-.") 'godef-jump)))

