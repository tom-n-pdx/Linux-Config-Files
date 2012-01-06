;-*-lisp-*-
; Default settings for all modes.
(setq visible-bell t)
;(setq column-number-mode t)
(global-font-lock-mode 1)
(setq transient-mark-mode 1)				   ; highlight region
(setq inhibit-startup-message t)			   ; no startup message
(fset 'yes-or-no-p 'y-or-n-p)				   ; change yes/no prompts to y/n
(setq-default fill-column 90)				   ; wrap at 110 columns
(setq-default comment-column 45)			   ; set column for comments



; If a windowing system isn't running, don't waste the screen real estate.
(unless window-system
  (menu-bar-mode nil)                   ; no menubar/scrollbar
  (tool-bar-mode nil)					; no toolbar
)

; Add my lisp files to those that are checked by Emacs if the directory `~/.emacs.d/lisp' exists.
(if (file-directory-p "~/.emacs.d/lisp")
    (setq load-path (cons  "~/.emacs.d/lisp" load-path))
)

; C++ mode hooks.
(add-hook 'c++-mode-hook 'turn-on-auto-fill)
;(add-hook `c-mode-hook `flyspell-prog-mode)





; Text mode hooks.
;(add-hook 'text-mode-hook 'turn-on-auto-fill)
;(add-hook 'text-mode-hook 'flyspell-mode)

; C/C++ mode hooks.
;(add-hook 'c-mode-hook 'turn-on-auto-fill)
;(add-hook `c-mode-hook `flyspell-prog-mode)

;(setq c-auto-newline t)
;(setq c-comment-continuation-stars "* ")

; Custom key bindings.
;(global-set-key [(meta g)] 'goto-line)

; EXPERIMENTAL SETTINGS

;;----------------------------------------------------------------------
;; Auto-REVERT
;; when a file is changed outside Emacs, automatically revert the buffer
;;----------------------------------------------------------------------
;; (autoload 'auto-revert-mode "autorevert" nil t)
;; (autoload 'turn-on-auto-revert-mode "autorevert" nil nil)
;; (autoload 'global-auto-revert-mode "autorevert" nil t)
;; (global-auto-revert-mode 1)

; After testing move, these settings to the appropriate place above.
;(setq auto-fill-mode t)                 ; This doesn't work for fundamental mode.
;(setq-default auto-fill-hook 'do-auto-fill) ; Neither does this. Bah!
;(setq-default tab-width 4)
;(setq require-final-newline t)          ; Make sure file ends in '\n'.
;(setq compilation-window-height 11)

;(keyboard-translate ?\C-h ?\C-?)       ; make sure backspace works
;(set-foreground-color "black")
;(set-background-color "white")

; Move to cust. key bindings when tested.
;(global-set-key [f2] '(lambda ()
;                        (interactive)
;                        (manual-entry (current-word))))
;; (global-set-key [f3] '(lambda ()
;;                         (interactive)
;;                         (split-window-vertically)
;;                         (shell)))
;; (global-set-key [f4] 'shrink-window)
;; (global-set-key [f5] 'enlarge-window)
;; (global-set-key [f6] 'ff-find-other-file)
;; (global-set-key [f7] 'previous-error)
;; (global-set-key [f8] 'next-error)
;; (global-set-key [f9] 'compile)
;; (global-set-key [f10] '(lambda ()
;;                          (interactive)
;;                          (kill-buffer (current-buffer))))
;; (global-set-key [f11] 'switch-to-previous-buffer)
;(global-set-key [f12] 'switch-to-next-buffer)


;; Add to C++ section after tested.
;(setq c-basic-offset 2                    ; 4 space indents
      ;c-syntactic-indentation t           ; indent syntactically
      ;c-tab-always-indent nil             
;      c-default-style "k&r")              ; k&r rules
;)

(put 'narrow-to-region 'disabled nil)
