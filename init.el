
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "/home/toyama/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)
;;(global-auto-complete-mode t)
(require 'python-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (jedi py-autopep8 yasnippet web-mode use-package smex smartparens projectile prodigy popwin pallet nyan-mode multiple-cursors magit idle-highlight-mode htmlize flycheck-cask expand-region exec-path-from-shell drag-stuff))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(jedi:setup)
;;  (define-key jedi-mode-map (kbd "<C-tab>") nil) ;;C-tabはウィンドウの移動に用いる
;;  (setq jedi:complete-on-dot t)
;;  (setq ac-sources
;;    (delete 'ac-source-words-in-same-mode-buffers ac-sources)) ;;jediの補完候補だけでいい
;;  (add-to-list 'ac-sources 'ac-source-filename)
;;  (add-to-list 'ac-sources 'ac-source-jedi-direct)
;;  (define-key python-mode-map "\C-ct" 'jedi:goto-definition)
;;  (define-key python-mode-map "\C-cb" 'jedi:goto-definition-pop-marker)
;;  (define-key python-mode-map "\C-cr" 'helm-jedi-related-names)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; (global-auto-complete-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-name nil)
(setq auto-save-list-file-prefix nil)

(setq kill-whole-line t)

(setq scroll-conservatively 1)

(line-number-mode 1)

(global-font-lock-mode t)

(defun previous-line (arg)
  (interactive "p")
  (condition-case nil
      (line-move (- arg))
    (beginning-of-buffer)))

(setq-default tab-width 4 indent-tabs-mode nil)

(global-linum-mode t)

(defun next-line (arg)
  (interactive "p")
  (condition-case nil
      (line-move arg)
    (end-of-buffer)))


(setq ring-bell-function 'ignore)
(put 'upcase-region 'disabled nil)

(setq hl-line-face 'underline)
(global-hl-line-mode)

(load-theme 'atom-one-dark t)
