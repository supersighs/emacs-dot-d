(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

(require 'textmate)
(require 'maxframe)

(textmate-mode)
(add-hook 'window-setup-hook 'maximize-frame t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; line numbers
(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)

;; clock
(setq display-time-24hr-format nil)
(display-time)

(load-library "tommy-gnus")
(load-library "tommy-theme")
(load-library "mako")
(load-library "tommy-autocomplete")
(load-library "tommy-python")



