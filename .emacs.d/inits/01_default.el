;; frame
(setq default-frame-alist
      (append
        (list
          '(width . 100)
          '(height . 50)
          '(top . 10)
          '(bottom . 0)
          )
        default-frame-alist))

;; mode-line
(column-number-mode t)

;; indent
(setq-default tab-width 4)

;; proxy setting
(setq url-scheme-register-proxy "http")

;; wgrep
(require 'wgrep nil t)

;; browser-url
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

;; cua-mode
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; ibus
;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)
;(ibus-define-common-key [?\C-\s ?\C-/] nil)
;(setq ibus-cursor-color '("red" "blue" "limegreen"))
;(ibus-define-common-key ?\C-j t)

;; fcitx
(bind-key "C-SPC" nil)

;; font
(add-to-list 'default-frame-alist '(font . "ricty-11"))
