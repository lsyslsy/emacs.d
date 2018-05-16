(my-install-package 'flycheck)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
;; grammal check: flycheck
(add-hook 'after-init-hook #'global-flycheck-mode);global enable

(provide 'init-flycheck)
