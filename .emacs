;; MArmalade - Emacs Package Manager
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Haskell mode is installed via Marmalade and autoloads.
;; It is done using the package.el method from:
;; https://github.com/haskell/haskell-mode

;; Set haskell indentation.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes (quote ("c7471ce3bb42defac344b3ecfca74228731b5ab20f804fd1deb8e65dddeab26a" default)))
 '(ecb-options-version "2.40")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(inhibit-startup-screen t))

;; Python mode from community.
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

;; C++ and make commands.
(global-set-key "\C-xc" 'compile)
(setq make-backup-files 'nil);
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.hpp$" . c++-mode) auto-mode-alist))
;(add-hook 'c++-mode-hook 'turn-on-font-lock)

(set-face-attribute 'default nil :height 100)

;; Aktiver sml-mode
;;(load "sml-mode/sml-mode-startup.el")
;;        (require 'sml-mode)
;;        (setq auto-mode-alist (cons '("\\.sml$" . sml-mode) auto-mode-alist))
;;        (setq auto-mode-alist (cons '("\\.sig$" . sml-mode) auto-mode-alist))
;;        (add-hook 'sml-mode-hook
;;            (lambda() ;;; *** SML-mode Customization
;;                (setq sml-program-name "mosml")
;;                (setq sml-default-arg "-P full")
;;                (setq sml-indent-level 4)        ; conserve on horizontal space
;;                (setq words-include-escape t)    ; \ loses word break status
;;                (setq indent-tabs-mode nil)))    ; never ever indent with tabs

;; Get a loadpath for new module things...
(add-to-list 'load-path "~/.emacs.d/lisp/")


;; Mark lines after col 80.
(require 'whitespace)
(setq whitespace-style '(face empty lines-tail trailing))
(global-whitespace-mode t)


;; Lets me delete selected text
(delete-selection-mode t)

;; set font
;; (set-default-font “Terminus-9”)

;; Activate lua-mode
(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)


;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Set tab width to 4
(setq tab-width 4)

;; Also for C-style files... -.-
(setq-default c-basic-offset 4)

;; Set fill width to 80 (wrap for M-q)
(setq-default fill-column 80)

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
;;(color-theme-solarized-dark)
;;(load-theme 'monokai t)

;; Theme downloaded from https://github.com/oneKelvinSmith/monokai-emacs
;; The version in Marmalade is deprecated.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai)

;; Disable the scrollbar
(scroll-bar-mode -1)

;; Disable the menubar
(menu-bar-mode -1)

;; Disable the toolbar
(tool-bar-mode -1)


;; Emacs code browser - Activate with M-x ecb-activate
;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
;;(require 'ecb) ;; Load at startup
;;(require 'ecb-autoloads) ;; Load on activation
;;(setq ecb-auto-activate 1)
;;(setq ecb-tip-of-the-day nil)


;; auctex package
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-PDF-mode t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
