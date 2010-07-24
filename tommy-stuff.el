(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))

(require 'textmate)
(require 'maxframe)

(textmate-mode)
(add-hook 'window-setup-hook 'maximize-frame t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(load-library "tommy-theme")
(load-library "mako")
(load-library "tommy-autocomplete")
(load-library "tommy-python")



