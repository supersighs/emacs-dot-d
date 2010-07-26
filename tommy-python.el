(require 'python-mode)

(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(setq ropemacs-guess-project       t)
(setq ropemacs-separate-doc-buffer t)
(setq ropemacs-enable-autoimport   t)

(ac-ropemacs-setup)

(add-hook 'python-mode-hook
  (lambda() (linum-mode 1)))

(provide 'tommy-python)
