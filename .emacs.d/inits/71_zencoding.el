;; zencoding
;;
(autoload 'zencoding-mode "zencoding-mode" nil t)
(eval-after-load "zencoding-mode"
		 '(progn
		    (define-key zencoding-mode-keymap "\C-z" 'zencoding-expand-line)))

(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'html-mode-hook 'zencoding-mode)
(add-hook 'nxml-mode-hook 'zencoding-mode)
(add-hook 'text-mode-hook 'zencoding-mode)
