(load "sml-mode/sml-mode-startup.el")

;; Get a laodpath for new module things...
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Mark lines after col 80.
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)

;; Aktiver sml-mode
        (require 'sml-mode)
        (setq auto-mode-alist (cons '("\\.sml$" . sml-mode) auto-mode-alist))
        (setq auto-mode-alist (cons '("\\.sig$" . sml-mode) auto-mode-alist))
        (add-hook 'sml-mode-hook
            (lambda() ;;; *** SML-mode Customization
                (setq sml-program-name "mosml")
                (setq sml-default-arg "-P full")
                (setq sml-indent-level 4)        ; conserve on horizontal space
                (setq words-include-escape t)    ; \ loses word break status
                (setq indent-tabs-mode nil)))    ; never ever indent with tabs

;; Lets me delete selected text
(delete-selection-mode t)

;; set font
;;(set-default-font “Terminus-9”)

;; Activate lua-mode
(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)


;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Set tab width to 4
(setq tab-width 4)

;; Also for C-style files... -.-
(setq-default c-basic-offset 4)

;; Highlight TODO and FIXME, make this work for other files...
(add-hook 'c-mode-common-hook
          (lambda ()
            (font-lock-add-keywords nil
             '(("\\<\\(FIXME\\|TODO\\|BUG\\)" 1 font-lock-warning-face t)))))

;; No backup files
(setq make-backup-files nil)

;; Show line numbers in the left side of the buffer. Toggle the
;; display of line numbers with: M-x linum-mode
(require 'linum)
(global-linum-mode 1)

;; Emacs color themes
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-robin-hood)
;;(color-theme-classic)
;;(color-theme-gnome)
;;(color-theme-gnome2)
(color-theme-solarized-dark)

;; Disable the scrollbar
(scroll-bar-mode -1)

;; Disable the toolbar
(tool-bar-mode -1)

;; auctex package
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-PDF-mode t)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;;--------------------------------------------------------------------
;; Lines enabling gnuplot-mode

;; move the files gnuplot.el to someplace in your lisp load-path or
;; use a line like
;;  (setq load-path (append (list "/path/to/gnuplot") load-path))

;; these lines enable the use of gnuplot mode
;;  (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
;;  (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)

;; this line automatically causes all files with the .gp extension to
;; be loaded into gnuplot mode
;;  (setq auto-mode-alist (append '(("\\.gp$" . gnuplot-mode)) auto-mode-alist))

;; This line binds the function-9 key so that it opens a buffer into
;; gnuplot mode
;;  (global-set-key [(f9)] 'gnuplot-make-buffer)

;; end of line for gnuplot-mode
;;--------------------------------------------------------------------
