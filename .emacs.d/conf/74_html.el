;; mode for html
;; w/ nxml-mode, html5-el

(add-to-list 'auto-mode-alist '("\\.[sx]?html?\\(\\.[a-zA-Z]+\\)?\\'" . nxml-mode))

(autoload 'whattf-dt "whattf-dt" nil t)
(eval-after-load "rng-loc"
		 '(add-to-list 'rng-schema-locating-files
		    (concat user-public-repository-directory "html5-el/schemas.xml")))

(eval-after-load "nxml-mode"
		 '(progn
		    (setq nxml-slash-auto-complete-flag t)
		    (setq nxml-bind-meta-tab-to-complete-flag t)
		    (define-key nxml-mode-map [return] 'newline-and-indent)
		    (add-to-list 'ac-modes 'nxml-mode)
		    ))
