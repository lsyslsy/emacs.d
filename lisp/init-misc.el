(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (sanityinc-solarized-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 设置字体
(set-default-font "monaco 12")
;;设置默认读入文件编码
(prefer-coding-system 'utf-8)

;;设置写入文件编码
(setq default-buffer-file-coding-system 'utf-8)

;; tab set 4 space
(setq tab-width 4)

;;------------------------------------------------------------------
;;%% 包配置
;;------------------------------------------------------------------
(projectile-global-mode)



(require 'window-numbering)
(window-numbering-mode 1)

;; 自动从硬盘加载
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)

(provide 'init-misc)
