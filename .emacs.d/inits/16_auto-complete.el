;; auto-complete
;; https://github.com/m2ym/auto-complete.git
;; https://github.com/m2ym/popup-el.git

(use-package auto-complete
             :ensure t
             :config
             (add-to-list 'ac-dictionary-directories
                          (expand-file-name (concat user-emacs-directory "elisp/ac-dict")))
             (bind-key "M-TAB" 'auto-complete ac-mode-map)
             (ac-config-default))
