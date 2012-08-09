;; C-h bind
(keyboard-translate ?\C-h ?\C-?)
(define-key global-map (kbd "C-x ?") 'help-command)

;; switch window
(global-set-key (kbd "C-t") 'other-window)
