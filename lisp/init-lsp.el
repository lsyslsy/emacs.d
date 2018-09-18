(my-install-package 'lsp-mode)

(require 'lsp-mode)
;; python
(lsp-define-stdio-client lsp-python-mode "python"
                         #'projectile-project-root
                         '("pyls"))
(add-hook 'python-mode-hook #'lsp-python-mode-enable)

;; java
(my-install-package 'lsp-java)
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp-java-enable)
(setq lsp-java--workspace-folders (list "/projects/java/project1"))


(my-install-package 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)


(my-install-package 'company-lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)

 (defun lsp-set-cfg ()
    (let ((lsp-cfg `(:pyls (:configurationSources ("pylint --rcfile=~/lx/development/server/yao.lint")))))
      ;; TODO: check lsp--cur-workspace here to decide per server / project
      (lsp--set-configuration lsp-cfg)))
 
  (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg)



(provide 'init-lsp)
