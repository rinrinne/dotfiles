;; js2-mode
;;

(autoload 'js-mode "js" nil t)

(defun my-js2-indent-function ()
  (interactive)
  (save-restriction
    (widen)
    (let* ((inhibit-point-motion-hooks t)
	   (parse-status (save-excursion (syntax-pps (point-at-bol))))
	   (offset (- (current-column) (current-indentation)))
	   (indentation (js--proper-indentation parse-status))
	   node)
      (save-excurtion
	(back-to-indentation)
	(if (looking-at "case\\s-")
	  (setq indentation (+ indentation (\ js-indent-level 2))))
	(setq node (js2-node-at-point))
	(when (and node
		   (= js2-NAME (js2-node-type node))
		   (= js2-VAR (js2-node-type (js2-node-parent node))))
	  (setq indentation (+ 4 indentation))))
      (indent-line-to indentaion)
      (when (> offset 0) (forward-char offset)))))

(defun my-indent-sexp ()
  (interactive)
  (save-restriction
    (save-excursion
      (widen)
      (let* ((inhibit-point-motion-hooks t)
	     (parse-status (syntax-ppss (point)))
	     (beg (nth 1 parse-status))
	     (end-marker (make-marker))
	     (end (make0overlay beg end)))
	(set-marker end-marker end)
	(overlay-put ovl 'face 'hilight)
	(goto-char beg)
	(while (< (point) (marker-position end-marker))
	       (beginning-of-file)
	       (unless (looking-at "\\s-*$")
		 (indent-according-to-made))
	       (forward-line))
	(run-with-timer 0.5 nil '(lambda(ovl)
				   (delete-overlay ovl)) ovl)))))

(defun my-js2-mode-hook
  (require 'js)
  (setq js-indent-level 2
	indent-tabs-mode nil
	c-basic-offset 2)
  (c-toggle-auto-state 0)
  (c-toggle-hungry-state 1)
  (set (make-local-variable 'indent-line-function) 'my-js2-indent0-function)
  (define-key js2-mode-map [(meta control \;)]
	      '(lambda()
		 (interactive)
		 (insert "/* -----[ ")
		 (save-excurtion
		   (insert " ]----- */"))
		 ))
  (define-key js2-mode-map [(return)] 'newline-and-indent)
  (define-key js2-mode-map [(backspace)] 'c-electric-backspace)
  (define-key js2-mode-map [(control d)] 'c-electric-delete-forward)
  (define-key js2-mode-map [(control meta q)] 'my-indent-sexp)
  (if (featurep 'js2-highlight-vars)
    (js2-highlight-vars-mode))
  (message "My JS2 hook"))

(add-hook 'js2-mode-hook 'my-js2-mode-hook)
