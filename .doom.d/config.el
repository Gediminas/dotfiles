;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;gds
(setq doom-font (font-spec :family "hack" :size 12))


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;gds
;(setq doom-theme 'doom-one)
(setq doom-theme 'zenburn)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq treemacs-position 'right)

(setq mac-command-modifier 'control)

;(map! :leader
;      (:when (featurep! :completion ivy)
;        :desc "M-x"                     :n "SPC" #'counsel-M-x))
;(map! :leader
;      (:when (featurep! :completion helm)
;        :desc "M-x"                     :n "SPC" #'helm-M-x))

;(setq irony-additional-clang-options '("-std=c++17"))
;
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/.local/themes/")
;;(load-theme 'zenburn-care t)
;;(load-theme 'zenburn t)
;
;;(enable-theme 'doom-one)
;
;;;(set-face-attribute 'hl-line nil :background "#BBBBBB")
;
;;(load-file "~/.doom.d/plugins/devenv-emulation.elc")
;;
;
;
;;(require 'rtags) ;; optional, must have rtags installed
;;(require 'cmake-ide)
;;(cmake-ide-setup)
;
;;(require 'realgud-node-inspect)
;;(global-set-key [f5] 'gud-cont)
;;(global-set-key [f4] 'gud-next)
;;(global-set-key [f3] 'gud-step)
;;(global-set-key [f1] 'gud-break)
;
;;(require 'indium)
;;(add-hook 'js-mode-hook #'indium-interaction-mode)


;; (defun gds/alternate-buffer (&optional window)
;;   "Switch back and forth between current and last buffer in the
;; current window."
;;   (interactive)
;;   (cl-destructuring-bind (buf start pos)
;;     (or (cl-find (window-buffer window) (window-prev-buffers)
;;                      :key #'car :test-not #'eq)
;;            (list (other-buffer) nil nil))
;;     (if (not buf)
;;         (message "Last buffer not found.")
;;       (set-window-buffer-start-and-point window buf start pos))))

;(map! "C-<tab>" 'gds/alternate-buffer)
(global-set-key (kbd "C-e") 'evil-switch-to-windows-last-buffer)
(global-set-key (kbd "C-<tab>") 'evil-switch-to-windows-last-buffer)
(global-set-key [f1] 'evil-switch-to-windows-last-buffer)

(setq gds/theme (car custom-enabled-themes))

(when (eq gds/theme 'spacemacs-light)
  (set-face-attribute 'hl-line nil :background "gray78")
  (set-face-attribute 'region nil :background "light steel blue")
  )

(when (eq gds/theme 'zenburn)
  (set-face-attribute 'hl-line nil :background "gray30")
  (set-face-attribute 'region nil :background "DeepSkyBlue4")
  )

  (global-superword-mode t)
  ;; (global-superword-mode t)
  ;; (add-hook 'after-change-major-mode-hook
  ;;           (lambda ()
  ;;             (modify-syntax-entry ?_ "w")))
