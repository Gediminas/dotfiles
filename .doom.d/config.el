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
(setq doom-theme 'doom-zenburn)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - load! for loading external *.el files relative to this one
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


(setq mac-command-modifier 'control)

;;(setq irony-additional-clang-options '("-std=c++17"))
;;(require 'rtags) ;; optional, must have rtags installed
;;(require 'cmake-ide)
;;(cmake-ide-setup)
;;(require 'indium)
;;(add-hook 'js-mode-hook #'indium-interaction-mode)

;; (setq gds/theme (car custom-enabled-themes))

;; (when (eq gds/theme 'spacemacs-light)
;;   (set-face-attribute 'hl-line nil :background "gray78")
;;   (set-face-attribute 'region nil :background "light steel blue")
;;   )

;; (when (eq gds/theme 'zenburn)
;;   (set-face-attribute 'hl-line nil :background "gray30")
;;   (set-face-attribute 'region nil :background "DeepSkyBlue4")
;;   )


;; GUI
;;
(global-hl-line-mode 1)
(set-face-attribute 'region nil :background "#00488B") ;DeepSkyBlue4
(set-face-attribute 'region nil :foreground nil) ;DeepSkyBlue4

(setq evil-split-window-below t
      evil-vsplit-window-right t)

(setq frame-title-format '(:eval
   (let ((project-name (projectile-project-name)))
   (if (string= "-" project-name)
       (format "%s" "%b")
       (format "%s" project-name)))))


;; BEHAVIOR

(superword-mode t)
(add-hook 'after-change-major-mode-hook
          (lambda ()
            (modify-syntax-entry ?_ "w")))

  ;; For python
  ;(add-hook 'python-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For ruby
  ;(add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; For Javascript
  (add-hook 'js2-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

;; TREEMACS

(after! treemacs
  (setq
   treemacs-position               'right
   ;; treemacs-no-png-images          nil
   ;; treemacs-is-never-other-window  nil
   ;; treemacs-file-follow-delay      0.2
   )
  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)
  (treemacs-git-mode 'extended)
  (treemacs-fringe-indicator-mode t)
  (treemacs-icons-dired-mode t)
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)

  )


;https://lccambiaghi.github.io/.doom.d/readme.html

(after! winum
  (defun winum-assign-0-to-treemacs ()
    (when (string-match-p (buffer-name) "*Treemacs*") 10))

  (add-to-list 'winum-assign-functions #'winum-assign-0-to-treemacs)
  ;(set-face-attribute 'winum-face nil :weight 'bold)

   (setq window-numbering-scope            'local
;;         winum-reverse-frame-list          nil
;;         winum-auto-assign-0-to-minibuffer t
;;         ;winum-assign-func                 'my-winum-assign-func
         winum-auto-setup-mode-line        t
;;         ;winum-format                      " %s "
         winum-mode-line-position          1
;;         winum-ignored-buffers             '(" *which-key*")
;;         winum-ignored-buffers-regexp      '(" \\*Treemacs-.*")
   )
  (winum-mode t)
)

(after! company
  (add-to-list 'company-backends 'company-tabnine))

(after! which-key
  ;; Compact which-key
  (push '(("\\(.*\\) 1" . "winum-select-window-1") . ("\\1 1..9" . "window 1..9"))
        which-key-replacement-alist)
  (push '((nil . "winum-select-window-[2-9]") . t) which-key-replacement-alist)
)

(after! evil-magit
    (setq magit-log-margin    '(t "%Y-%m-%d %H:%M " magit-log-margin-width t 18))
    (setq magit-status-margin '(t "%Y-%m-%d %H:%M " magit-log-margin-width t 18))
)
;(ace-window-display-mode t)


;; KEYS

;(map! :leader
;      (:when (featurep! :completion ivy)
;        :desc "M-x"                     :n "SPC" #'counsel-M-x))
;(map! :leader
;      (:when (featurep! :completion helm)
;        :desc "M-x"                     :n "SPC" #'helm-M-x))

(map!
 :n      "C-<tab>"    #'evil-switch-to-windows-last-buffer
 :n      "C-s"        #'save-buffer

 :leader      "l"          #'ace-window

 ;; (:when (featurep! :ui window-select)
 ;;  (:prefix-map ("j" . "Jump")
 ;;   :desc "ace-window"  "j" #'ace-window
 ;;   )
 ;;  )

 (:when (featurep! :ui workspaces)
  :n      "gt"         #'+workspace/other

 ;;  (:prefix-map ("TAB" . "workspace")
 ;;  :desc "Switch to last workspace"  "TAB" #'+workspace/other
 ;;  )
 )

 (:when (featurep! :ui window-select)
  :leader
  :n "1" #'winum-select-window-1
  :n "2" #'winum-select-window-2
  :n "3" #'winum-select-window-3
  :n "4" #'winum-select-window-4
  :n "5" #'winum-select-window-5
  :n "6" #'winum-select-window-6
  :n "7" #'winum-select-window-7
  :n "8" #'winum-select-window-8
  :n "9" #'winum-select-window-9
  )
)


