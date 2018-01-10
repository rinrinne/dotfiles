;; js2-mode
;;

(use-package js2-mode
             :ensure t
             :mode (("\\.js\\'" . js2-mode)
                    ("\\.jsx?\\'" . js2-jsx-mode))
             :interpreter (("node" . js2-mode))
             :init
             (add-hook 'js-mode-hook 'js2-minor-mode))
