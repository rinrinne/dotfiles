;; Anythng
;; (auto-install-batch "anything")

(when (require 'anything nil t)
  (setq
    anything-idle-delay 0.3
    anything-input-idle-delay 0.2
    anything-candidate-number-limit 100
    anything-quick-update t
    anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    (setq anything-su-or-sudo "sudo")
    (define-key global-map (kbd "M-y") 'anything-show-kill-ring))

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo")
	     (require 'migemo nil t))
    (require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
    (descbinds-anything-install))
  
  (when (require 'color-moccur nil t)
    (when (require 'anything-c-moccur nil t)
      (setq
	anything-c-moccur-higligt-into-line-flag t
	anything-c-moccur-enable-auto-look-flag t
	anything-c-moccur-enable-initial-pattern t)
      (global-set-key (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur))))
