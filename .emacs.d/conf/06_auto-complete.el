;; auto-complete
;; https://github.com/m2ym/auto-complete.git
;; https://github.com/m2ym/popup-el.git

(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
	       "~/.emacs.d/elisp/ac-dict")
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default))
