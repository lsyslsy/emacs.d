;; 设置字体
(set-default-font "monaco 12")
;;设置默认读入文件编码
(prefer-coding-system 'utf-8)

;;设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)

;; tab set 4 space
(setq-default tab-width 4)

; (require 'window-numbering)
; (window-numbering-mode 1)

(scroll-bar-mode -1)
;; 自动从硬盘加载
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)
(my-install-package 'fic-mode)
;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))
;; 下面会显著增加启动时间，大约1.4s
(when (memq window-system '(mac ns x))
  ; 设成nil 则不从 .zshrc 读 只从 .zshenv读（可以加快速度，但是需要你将环境变量相关的都放到 .zshenv 中，而非 .zshrc 中）
  (my-install-package 'exec-path-from-shell)
  (use-package exec-path-from-shell
    :config
    (setq exec-path-from-shell-check-startup-files nil) ;
    (setq exec-path-from-shell-arguments '("-l" )) ;remove -i read form .zshenv
    (exec-path-from-shell-initialize)))
;; youdao dictionary key binding
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)

;color theme
(my-install-package 'color-theme-sanityinc-solarized)
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
; hide tool bar
(tool-bar-mode -1)
; stop create lockfile like .#
(setq create-lockfiles nil)
(provide 'init-misc)
