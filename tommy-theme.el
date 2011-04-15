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

(defun color-theme-donger-light ()
  (interactive)
  (color-theme-install
   '(color-theme-donger-light
     ((background-color . "#ffffff")
      (background-mode . light)
      (border-color . "#f2f2f2")
      (cursor-color . "#333333")
      (foreground-color . "#000000")
      (mouse-color . "black"))
     (fringe ((t (:background "#f2f2f2"))))
     (mode-line ((t (:foreground "#7419a9" :background "#c9c9c9"))))
     (region ((t (:background "#c7c6c6"))))
     (font-lock-builtin-face ((t (:foreground "#e57f2a"))))
     (font-lock-comment-face ((t (:foreground "#bfbfbf"))))
     (font-lock-function-name-face ((t (:foreground "#00b0fa"))))
     (font-lock-keyword-face ((t (:foreground "#2349b8"))))
     (font-lock-string-face ((t (:foreground "#d572be"))))
     (font-lock-type-face ((t (:foreground "#20bc40"))))
     (font-lock-variable-name-face ((t (:foreground "#d72d2d"))))
     (minibuffer-prompt ((t (:foreground "#7299ff" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t)))))))
(provide 'color-theme-donger-light)


(defun color-theme-donger-disco ()
  (interactive)
  (color-theme-install
   '(color-theme-donger-disco
     ((background-color . "#000000")
      (background-mode . light)
      (border-color . "#1a1a1a")
      (cursor-color . "#fce94f")
      (foreground-color . "#eeeeec")
      (mouse-color . "black"))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#242424"))))
     (font-lock-builtin-face ((t (:foreground "#49b540"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-function-name-face ((t (:foreground "#ed7300"))))
     (font-lock-keyword-face ((t (:foreground "#4168af"))))
     (font-lock-string-face ((t (:foreground "#f32066"))))
     (font-lock-type-face ((t (:foreground "#8ae234"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (minibuffer-prompt ((t (:foreground "#5df4e5" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t)))))))
(provide 'color-theme-donger-disco)

(defun color-theme-solarized (mode)
  "Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized."
  (interactive "Slight or dark? ")
  (let ((base03  "#002b36")
        (base02  "#073642")
        (base01  "#586e75")
        (base00  "#657b83")
        (base0   "#839496")
        (base1   "#93a1a1")
        (base2   "#eee8d5")
        (base3   "#fdf6e3")
        (yellow  "#b58900")
        (orange  "#cb4b16")
        (red     "#d30102")
        (magenta "#d33682")
        (violet  "#6c71c4")
        (blue    "#268bd2")
        (cyan    "#2aa198")
        (green   "#859900"))
    (when (eq 'light mode)
      (rotatef base03 base3)
      (rotatef base02 base2)
      (rotatef base01 base1)
      (rotatef base00 base0))
    (color-theme-install
     `(color-theme-solarized
       ((foreground-color . ,base0)
        (background-color . ,base03)
        (background-mode . ,mode))
       ;; basic faces
       (default ((t (:foreground ,base0))))
       (cursor ((t (:foreground ,cyan :background ,base0 :inverse-video t))))
       (escape-glyph-face ((t (:foreground ,red))))
       (fringe ((t (:foreground ,base01 :background ,base02))))
       (header-line ((t (:foreground ,base0 :background ,base2))))
       (highlight ((t (:background ,base02))))
       (isearch ((t (:foreground ,yellow :inverse-video t))))
       (menu ((t (:foreground ,base0 :background ,base02))))
       (minibuffer-prompt ((t (:foreground ,blue))))
       (mode-line
        ((t (:foreground ,base1 :background ,base02
                         :box (:line-width 1 :color ,base1)))))
       (mode-line-buffer-id ((t (:foreground ,base1))))
       (mode-line-inactive
        ((t (:foreground ,base0  :background ,base02
                         :box (:line-width 1 :color ,base02)))))
       (region ((t (:background ,base01))))
       (secondary-selection ((t (:background ,base02))))
       (trailing-whitespace ((t (:foreground ,red :inverse-video t))))
       (vertical-border ((t (:foreground ,base0))))
       ;; customize faces
       (custom-button
        ((t (:background ,base02 :box (:line-width 2 :style released-button)))))
       (custom-button-mouse ((t (:inherit custom-button :foreground ,base1))))
       (custom-button-pressed
        ((t (:inherit custom-button-mouse
                      :box (:line-width 2 :style pressed-button)))))
       (custom-comment-tag ((t (:background ,base02))))
       (custom-comment-tag ((t (:background ,base02))))
       (custom-documentation ((t (:inherit default))))
       (custom-group-tag ((t (:foreground ,orange :bold t))))
       (custom-link ((t (:foreground ,violet))))
       (custom-variable-tag ((t (:foreground ,orange :bold t))))
       ;; diff faces
       (diff-added ((t (:foreground ,green :inverse-video t))))
       (diff-changed ((t (:foreground ,yellow :inverse-video t))))
       (diff-removed ((t (:foreground ,red :inverse-video t))))
       ;; font-lock faces
       (font-lock-builtin-face ((t (:foreground ,green))))
       (font-lock-comment-face ((t (:foreground ,base01 :italic t))))
       (font-lock-constant-face ((t (:foreground ,cyan))))
       (font-lock-function-name-face ((t (:foreground ,blue))))
       (font-lock-keyword-face ((t (:foreground ,green))))
       (font-lock-string-face ((t (:foreground ,cyan))))
       (font-lock-type-face ((t (:foregound ,yellow))))
       (font-lock-variable-name-face ((t (:foregound ,blue))))
       (font-lock-warning-face ((t (:foreground ,red :bold t))))

       ;; show-paren-mode
       (show-paren-match-face ((t (:background ,cyan :foreground ,base3))))
       (show-paren-mismatch-face ((t (:background ,red :foreground ,base3))))

       ;; org-mode
       (org-hide ((t (:foreground ,base03))))
       (org-todo ((t (:foreground ,red :bold t))))
       (org-done ((t (:foreground ,green :bold t))))
       ))))

(defun color-theme-solarized-dark () (interactive) (color-theme-solarized 'dark))
(defun color-theme-solarized-light () (interactive) (color-theme-solarized 'light))

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (setq term-default-bg-color nil)
     (color-theme-initialize)
     (color-theme-solarized-dark)))

;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
 (set-frame-parameter (selected-frame) 'alpha '(100  90))
(add-to-list 'default-frame-alist '(alpha 100 90))

(eval-when-compile (require 'cl))
 (defun toggle-transparency ()
   (interactive)
   (if (/=
        (cadr (frame-parameter nil 'alpha))
        100)
       (set-frame-parameter nil 'alpha '(100 80))
     (set-frame-parameter nil 'alpha '(90 50))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)

(set-face-attribute 'default nil :height 110)
(setq-default line-spacing 2)
(linum-mode)

