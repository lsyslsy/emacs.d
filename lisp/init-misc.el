;; 设置字体
(set-default-font "monaco 12")
;;设置默认读入文件编码
(prefer-coding-system 'utf-8)

;;设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)

;; tab set 4 space
(setq tab-width 4)

; (require 'window-numbering)
; (window-numbering-mode 1)

;; 自动从硬盘加载
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)
(require 'fic-mode)
(add-hook 'prog-mode-hook 'fic-mode)
;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))
(provide 'init-misc)
