;; YASnippet
;;
(when (require 'yasnippet nil t)
  (yas-global-mode t)
  (when (require 'anything-c-yasnippet nil t)
    (setq anything-c-yas-space-match-any-greedy t)
    (global-set-key (kbd "C-c y") 'anythning-c-yas-complete)
    (yas--initialize)))
