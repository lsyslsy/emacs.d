;; 设置碰到错误进入debug

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq debug-on-error t)
;; This is only needed once, near the top of the file

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-elpa)


(defun my-install-package (package-name)
  (unless package-archive-contents
    (package-refresh-contents))
  (unless (package-installed-p package-name)
    (message "start download package: %s" package-name)
    (package-install package-name)
    (message "finish install package: %s" package-name)
    ))

(my-install-package 'use-package)
(require 'init-misc)
(require 'init-linum-mode)
(require 'init-ido)
(require 'init-smex)
(require 'init-magit)
(require 'init-company)
(require 'init-dired)
(require 'init-python-mode)
(require 'init-project)
(require 'init-helm)
;(require 'init-helm-gtags)
;(require 'init-irony)
;(require 'init-rtags)
(require 'init-cmake-ide)
(require 'init-flycheck)
(require 'init-evil)

;;; 默认不用tab，因为tab宽度问题，可能会引来一系列问题
;; 默认setq-default设置默认值，buffer自己的local值会覆盖着
(setq-default indent-tabs-mode nil)

;;; occur命令，显示buffer内所有的匹配
(global-set-key "\C-co" 'occur)

 ;;; Unbind 'C-x f'
; 默认是调用设置fill-column的长度的，实在基类, 还容易和查找文件搞混
(global-unset-key "\C-xf")

; stop cursor blick, because bothering
(blink-cursor-mode 0)

;; customize setting file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


;;  for helm swoop
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

