;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq mac-command-modifier 'control)



(add-to-list 'custom-theme-load-path "~/.emacs.d/.local/themes/")
;(load-theme 'zenburn-care t)
;(load-theme 'zenburn t)

;(enable-theme 'doom-one)

(set-face-attribute 'hl-line nil :background "#BBBBBB")

;(load-file "~/.doom.d/plugins/devenv-emulation.elc")
;


(require 'rtags) ;; optional, must have rtags installed
(require 'cmake-ide)
(cmake-ide-setup)

(require 'realgud-node-inspect)
(global-set-key [f5] 'gud-cont)
(global-set-key [f4] 'gud-next)
(global-set-key [f3] 'gud-step)
(global-set-key [f1] 'gud-break)

(require 'indium)
(add-hook 'js-mode-hook #'indium-interaction-mode)
