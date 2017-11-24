(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; hacks

(defun reload-init-file ()
  (interactive)
  (load-file "~/.emacs"))

(global-set-key (kbd "C-c C-r") 'reload-init-file)    ; Reload .emacs file

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; use-package

; auto-install use-package
; https://emacs.stackexchange.com/questions/28932/how-to-automatically-install-all-packages-loaded-by-my-emacs-file-in-the-minimu
(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; evil-leader

(use-package evil-leader
  :ensure t
  :config
    (global-evil-leader-mode)
    (evil-leader/set-leader "<SPC>")
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; evil

(use-package evil :ensure t)
;; Basic evil-mode and org-mode config to get started
;; Include this in your Emacs config file (ie ~/.emacs.d/init.el or ~/.emacs)
(require 'evil)
;; Enable Evil mode as defuault
(evil-mode 1)
;; Treat wrapped line scrolling as single lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;;; esc quits pretty much anything (like pending prompts in the minibuffer)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
;; Enable smash escape (ie 'jk' and 'kj' quickly to exit insert mode)
(define-key evil-insert-state-map "k" #'cofi/maybe-exit-kj)
(evil-define-command cofi/maybe-exit-kj ()
:repeat change
(interactive)
(let ((modified (buffer-modified-p)))
(insert "k")
(let ((evt (read-event (format "Insert %c to exit insert state" ?j)
nil 0.5)))
(cond
((null evt) (message ""))
((and (integerp evt) (char-equal evt ?j))
(delete-char -1)
(set-buffer-modified-p modified)
(push 'escape unread-command-events))
(t (setq unread-command-events (append unread-command-events
(list evt))))))))
(define-key evil-insert-state-map "j" #'cofi/maybe-exit-jk)
(evil-define-command cofi/maybe-exit-jk ()
:repeat change
(interactive)
(let ((modified (buffer-modified-p)))
(insert "j")
(let ((evt (read-event (format "Insert %c to exit insert state" ?k)
nil 0.5)))
(cond
((null evt) (message ""))
((and (integerp evt) (char-equal evt ?k))
(delete-char -1)
(set-buffer-modified-p modified)
(push 'escape unread-command-events))
(t (setq unread-command-events (append unread-command-events
(list evt))))))))
;; ORG MODE
;; auto-indent an org-mode file
(add-hook 'org-mode-hook
(lambda()
(local-set-key (kbd "C-c C-c") 'org-table-align)
(local-set-key (kbd "C-c C-f") 'org-table-calc-current-TBLFM)
(org-indent-mode t)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; helm

(use-package helm
  :ensure t
  :config
    (helm-mode 1)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; neotree

(use-package neotree
  :ensure t
  :config

    (evil-leader/set-key
    "m"  'neotree-toggle
    "n"  'neotree-project-dir)

  (setq projectile-switch-project-action 'neotree-projectile-action)
  (add-hook 'neotree-mode-hook
    (lambda ()
      (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
      (define-key evil-normal-state-local-map (kbd "I") 'neotree-hidden-file-toggle)
      (define-key evil-normal-state-local-map (kbd "z") 'neotree-stretch-toggle)
      (define-key evil-normal-state-local-map (kbd "R") 'neotree-refresh)
      (define-key evil-normal-state-local-map (kbd "m") 'neotree-rename-node)
      (define-key evil-normal-state-local-map (kbd "c") 'neotree-create-node)
      (define-key evil-normal-state-local-map (kbd "d") 'neotree-delete-node)

      (define-key evil-normal-state-local-map (kbd "s") 'neotree-enter-vertical-split)
      (define-key evil-normal-state-local-map (kbd "S") 'neotree-enter-horizontal-split)

      (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter))))

;(add-to-list 'load-path "~/repo")
;(require 'neotree)
;(global-set-key [f1] 'neotree-toggle)

(use-package find-file-in-project :ensure t)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
        (file-name (buffer-file-name)))
    (if project-dir
        (progn
        (neotree-dir project-dir)
        (neotree-find file-name))
    (message "Could not find git project root."))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; projectile

(use-package projectile
  :ensure t
  :config
    (projectile-mode 1)
    (projectile-global-mode)
    (setq projectile-indexing-method 'alien)
)



;(require 'flycheck)
;(flycheck-mode 1)
;(global-flycheck-mode)
;(package-install 'exec-path-from-shell)
;(exec-path-from-shell-initialize)
;npm install -g eslint babel-eslint eslint-plugin-react

(use-package projectile
  :ensure t
  :config
    ; http://codewinds.com/blog/2015-04-02-emacs-flycheck-eslint-jsx.html

    ;; use web-mode for .jsx files
    (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

    ;; turn on flychecking globally
    ;(add-hook 'after-init-hook #'global-flycheck-mode)
    ;(flycheck-mode 1)
    ;(global-flycheck-mode)

;    ;; disable jshint since we prefer eslint checking
;    (setq-default flycheck-disabled-checkers
;      (append flycheck-disabled-checkers
;        '(javascript-jshint)))
;
;    ;; use eslint with web-mode for jsx files
;    (flycheck-add-mode 'javascript-eslint 'web-mode)
;
;    ;; customize flycheck temp file prefix
;    (setq-default flycheck-temp-prefix ".flycheck")
;
;    ;; disable json-jsonlist checking for json files
;    ;(setq-default flycheck-disabled-checkers
;      ;(append flycheck-disabled-checkers
;        ;'(json-jsonlist)))
;
;    ;; https://github.com/purcell/exec-path-from-shell
;    ;; only need exec-path-from-shell on OSX
;    ;; this hopefully sets up path and other vars better
;    ;(when (memq window-system '(mac ns))
;      ;(exec-path-from-shell-initialize))
;
;    ;; adjust indents for web-mode to 2 spaces
;    (defun my-web-mode-hook ()
;      "Hooks for Web mode. Adjust indents"
;      ;;; http://web-mode.org/
;      (setq web-mode-markup-indent-offset 2)
;      (setq web-mode-css-indent-offset 2)
;      (setq web-mode-code-indent-offset 2))
;    (add-hook 'web-mode-hook  'my-web-mode-hook)
;
;    ;; for better jsx syntax-highlighting in web-mode
;    ;; - courtesy of Patrick @halbtuerke
;    (defadvice web-mode-highlight-part (around tweak-jsx activate)
;      (if (equal web-mode-content-type "jsx")
;        (let ((web-mode-enable-part-face nil))
;          ad-do-it)
;        ad-do-it))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; org

;; http://mobileorg.github.io/documentation/
;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(display-battery-mode t)
 '(package-selected-packages
   (quote
    (find-file-in-project evil-leader use-package neotree helm-projectile magit flycheck projectile helm evil-visual-mark-mode)))
 '(save-place t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; https://blog.aaronbieber.com/2016/01/30/dig-into-org-mode.html

(setq org-agenda-files '("~/Dropbox/org/"))

(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELED")))


(defun gds-pop-to-org-agenda (split)
  "Visit the org agenda, in the current window or a SPLIT."
  (interactive "P")
  (org-agenda-list)
  (when (not split)
    (delete-other-windows)))
(define-key global-map (kbd "C-c t a") 'gds-pop-to-org-agenda)

(setq org-capture-templates
            '(("a" "My TODO task format." entry
                        (file "todo.org")
                                 "* TODO %?
                                 SCHEDULED: %t")))

(defun gds-org-task-capture ()
  "Capture a task with my default template."
  (interactive)
  (org-capture nil "a"))
(define-key global-map (kbd "C-c c") 'gds-org-task-capture)



(setq org-agenda-text-search-extra-files '(agenda-archives))
(setq org-blank-before-new-entry (quote ((heading) (plain-list-item))))
(setq org-enforce-todo-dependencies t)
(setq org-log-done (quote time))
(setq org-log-redeadline (quote time))
(setq org-log-reschedule (quote time))

