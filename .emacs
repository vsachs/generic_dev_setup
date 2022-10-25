(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
      ("marmalade" . "https://marmalade-repo.org/packages/")
      ("melpa" . "https://melpa.org/packages/")
      ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
      ("melpa-milkbox" . "http://melpa.milkbox.net/packages/"))
)
(package-initialize)

;(require 'protobuf-mode)
;(require 'cl)
;(require 'uniquify)
;(require 'paren)
;(require 'thingatpt)
(setq backup-directory-alist `(("." . "~/.emacs_backups")))
(setq auto-mode-alist (cons '("\.xaml$" . nxml-mode) auto-mode-alist))

;; keybinds
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "<select>") 'move-end-of-line)
(define-key my-keys-minor-mode-map (kbd "C-x C-r") 'recentf-open-files)
(define-key my-keys-minor-mode-map (kbd "C-x C-s") 'save-buffer)
(define-key my-keys-minor-mode-map (kbd "M-o") 'recentf-open-files-compl)
(define-key my-keys-minor-mode-map (kbd "C-c C-c") 'comment-region)
(define-key my-keys-minor-mode-map (kbd "C-v") 'yank)
(define-key my-keys-minor-mode-map (kbd "M-v") 'yank-pop)
(define-key my-keys-minor-mode-map (kbd "C-w") 'kill-ring-save)
(define-key my-keys-minor-mode-map (kbd "C-f") 'kill-region)
(define-key my-keys-minor-mode-map (kbd "M-f") 'my-mark-current-word)
(define-key my-keys-minor-mode-map (kbd "M-e") 'delete-region)
(define-key my-keys-minor-mode-map (kbd "M-g") 'goto-line)
(define-key my-keys-minor-mode-map (kbd "M-s") 'query-replace-regexp)
(define-key my-keys-minor-mode-map (kbd "C-s") 'isearch-forward-regexp)
(define-key my-keys-minor-mode-map (kbd "C-r") 'isearch-backward-regexp)
(define-key my-keys-minor-mode-map (kbd "C-z") 'keyboard-quit)
(define-key my-keys-minor-mode-map (kbd "C-q") 'undo)
(define-key my-keys-minor-mode-map (kbd "M-q") 'quoted-insert)
(define-key my-keys-minor-mode-map (kbd "M-t") 'xref-find-definitions)
(define-key my-keys-minor-mode-map (kbd "C-t") 'visit-tags-table)

(global-set-key "\C-b" 'set-region-on-word)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(setq case-fold-search t)
(fset 'yes-or-no-p 'y-or-n-p)
(show-paren-mode 1)
(setq show-paren-delay 0)
(setq show-paren-mode t)
(setq blink-matching-paren t)
(setq query-replace-highlight t) ; will highlight during query.
(setq search-highlight t) ; highlight incremental search
(setq transient-mark-mode t)
; show column number
(column-number-mode 1)

;; c++ ugh
;;(setq c-default-style "stroustrup")
;;(setq c-default-style "linux")
(setq-default c-basic-offset 4
	      tab-width 4
	      intend-tabs-mode 0)

(add-hook 'java-mode-hook
		  (lambda ()
			(setq c-basic-offset 4
				  tab-width 4
				  indent-tabs-mode nil)
			(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(add-hook 'sh-mode-hook
		  (lambda ()
			(setq c-basic-offset 4
				  tab-width 4
				  indent-tabs-mode nil)))

(add-hook 'python-mode-hook
		  (lambda ()
			(setq tab-width 4)
			(setq-default tab-width 4)
			(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

; run gofmt before any save
(defun gofmt-if-go-mode()
  (when (eq major-mode 'go-mode)
    (gofmt-before-save)))
(add-hook 'before-save-hook 'gofmt-if-go-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes '(tango-dark))
 '(package-selected-packages
   '(yaml-mode json-mode markdown-mode+ markdown-mode guess-offset go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
