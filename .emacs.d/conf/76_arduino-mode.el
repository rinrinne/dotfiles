(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

(add hook 'arduino-mode-hook
     '(lambda ()
        (setq indent-tabs-mode nil)))
