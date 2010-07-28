(add-to-list 'load-path
             "/usr/local/share/emacs/site-lisp/gnus-5.10.10/lisp/")

(require 'gnus)

(load "starttls")
(load-library "smtpmail")

(setq user-mail-address "tommy.klumker@gmail.com")
(setq user-full-name "Tommy Klumker")

(setq gnus-select-method '(nnimap "gmail"
(nnimap-address "imap.gmail.com")
(nnimap-server-port 993)
(nnimap-authinfo-file "~/.authinfo")
(nnimap-stream ssl)))

(setq mail-sources nil)
(setq gnus-nntp-server nil
      gnus-read-active-file nil
      gnus-save-newsrc-file nil
      gnus-read-newsrc-file nil
      gnus-check-new-newsgroups nil)

;(load "starttls")
;(load-library "smtpmail")
