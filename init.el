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



;; manually installed packages
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; load files
(load-file "~/.emacs.d/lisp/flames-of-freedom.el")



;; theme
(load-theme 'cyberpunk t)
(global-linum-mode)

;; global modes
(global-company-mode)
(setq company-idle-delay 0)
(global-disable-mouse-mode)


;; backup
(setq make-backup-files nil)

;; evil
(evil-mode 1)
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)



;; typing of emacs
;; (load "typing")



;; custom functions
(defun aaa ()
  (interactive)
  (find-file "~/Documents/__jadavpur/sem6/network/network_assign5/ans.txt"))

(defun exer ()
  (interactive)
  (find-file "~/exercism/emacs-lisp/hello-world/hello-world.el"))

(defun e ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))












;; hat dite nei ------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(aggressive-indent rainbow-delimiters nyan-mode key-chord fireplace evil disable-mouse company afternoon-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Variable" :foundry "ADBO" :slant normal :weight bold :height 158 :width normal)))))
