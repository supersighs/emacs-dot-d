
(require 'whitespace)
(add-hook 'python-mode-hook 'whitespace-mode)


(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-tangotango)))

;(load-library "mmm-mako")
;(load-library "mako")
