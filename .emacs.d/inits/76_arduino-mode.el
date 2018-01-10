;; arduino mode

(use-package arduino-mode
             :ensure t
             :mode (("\\.(pde|ino)\\'" . arduino-mode))
             :config
             (setq indent-tabs-mode nil))
