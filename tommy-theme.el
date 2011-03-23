(defun color-theme-donger ()
  (interactive)
  (color-theme-install
   '(color-theme-donger
     ((background-color . "#000000")
      (background-mode . light)
      (border-color . "#1a1a1a")
      (cursor-color . "#ce0b09")
      (foreground-color . "#eeeeec")
      (mouse-color . "black"))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#6c1318"))))
     (font-lock-builtin-face ((t (:foreground "#72cfc7"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-function-name-face ((t (:foreground "#ffa200"))))
     (font-lock-keyword-face ((t (:foreground "#367ba6"))))
     (font-lock-string-face ((t (:foreground "#b63e83"))))
     (font-lock-type-face ((t (:foreground "#8ae234"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (minibuffer-prompt ((t (:foreground "#21ed2e" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t)))))))
(provide 'color-theme-donger)


(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-donger)))

;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
 (set-frame-parameter (selected-frame) 'alpha '(90 80))
(add-to-list 'default-frame-alist '(alpha 90 80))

(eval-when-compile (require 'cl))
 (defun toggle-transparency ()
   (interactive)
   (if (/=
        (cadr (frame-parameter nil 'alpha))
        100)
       (set-frame-parameter nil 'alpha '(100 100))
     (set-frame-parameter nil 'alpha '(85 50))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)
