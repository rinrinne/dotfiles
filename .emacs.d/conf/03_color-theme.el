;; color-theme
;; https://github.com/sellout/emacs-color-theme-solarized

(when (require 'color-theme nil t)
  (color-theme-initialize)
  (when (require 'color-theme-solarized nil t)
    (color-theme-solarized-dark)))
