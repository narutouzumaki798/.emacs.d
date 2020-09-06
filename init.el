;; customization
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq make-backup-files nil)

;; melpa --- 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; scoll ---
(setq redisplay-dont-pause t
  scroll-margin 1
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1)



;; indentation ---
(setq c-default-style "linux"
      c-basic-offset 4)


;; manually installed packages
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")




;; load files
(load-file "~/.emacs.d/lisp/flames-of-freedom.el")
(load-file "~/.emacs.d/lisp/autopair.el")


;; theme
(load-theme 'grandshell t)
(global-linum-mode)



;; global modes
(global-company-mode)(setq company-idle-delay 0)
(global-disable-mouse-mode)
(electric-pair-mode);;(autopair-global-mode)


;; hooks
(add-hook 'company-mode-hook 'rainbow-delimiters-mode)

;; backup
(setq make-backup-files nil)

;; evil
(evil-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)







;; custom functions
(defun aaa ()
  (interactive)
  (find-file "~/Documents/__jadavpur/faltu/curses/maze/maze.cpp"))

(defun exer ()
  (interactive)
  (find-file "~/exercism/emacs-lisp/hello-world/hello-world.el"))

(defun e ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))


(defun compiler ()
  (interactive)
  (find-file "~/Documents/__jadavpur/sem6/compiler/lockdown/code_generator/main.cpp"))


(defun faltu ()
  (interactive)
  (find-file "~/Documents/__jadavpur/faltu/fff.cpp"))

(defun chip ()
  (interactive)
  (find-file "~/Documents/__jadavpur/faltu/curses/chip8/main.cpp"))




(defun run ()
  (interactive)
  (let ((term-buffer (term "/bin/bash")))
    (set-buffer term-buffer)
    (term-send-raw-string "./run\n")
    ))
  








;; hat dite nei ------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-safe-themes
   '("57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" default))
 '(fci-rule-color "#383838")
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Variable" :foundry "ADBO" :slant normal :weight semi-bold :height 180 :width normal)))))
