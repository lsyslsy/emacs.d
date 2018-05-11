 ;;------------------------------------------------------------------
;;%% 包配置
;;------------------------------------------------------------------
(projectile-global-mode)
(setq projectile-completion-system 'helm)
 (defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))

 (global-set-key [f8] 'neotree-project-dir)
(setq neo-theme 'icons)
; projectile切换工程的时候，neotree也切换根
;(setq projectile-switch-project-action 'neotree-projectile-action)
;(add-to-list 'projectile-globally-ignored-directories "log")
(provide 'init-project)
