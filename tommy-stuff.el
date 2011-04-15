(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

(require 'textmate)
(require 'maxframe)
(require 'yasnippet)


(textmate-mode)

(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet-0.5.9/snippets")
(add-hook 'window-setup-hook 'maximize-frame t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; line numbers
(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)

;; clock
(setq display-time-24hr-format nil)
(display-time)

;; font
(set-face-attribute 'default nil :height 120)

(load-library "tommy-gnus")
(load-library "tommy-theme")
(load-library "mako")
(load-library "tommy-autocomplete")
(load-library "tommy-php")
(load-library "init-python")
(load-library "javascript")


(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
                `((".*" ,temporary-file-directory t)))

(require 'whitespace)
(add-hook 'python-mode-hook 'whitespace-mode)

(add-to-list 'load-path "~/.emacs.d/vendor/emacs-jabber")
;; For 0.7.1 and below:
(require 'jabber)
;; For 0.7.90 and above:
(require 'jabber-autoloads)

(setq rcirc-default-nick "_tommyk")
