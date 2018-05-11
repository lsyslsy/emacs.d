
(with-eval-after-load 'cc-mode
  (require 'rtags)
  (require 'company-rtags)
  (setq rtags-completions-enabled t)
  ;开启helm继承
  (require 'helm-rtags)
  (setq rtags-use-helm t)
  (setq rtags-autostart-diagnostics t)
  (rtags-enable-standard-keybindings)
  ;flycheck 继承
  (require 'flycheck-rtags))

(with-eval-after-load 'company
  (add-to-list
    'company-backends 'company-rtags))


(defun my-flycheck-rtags-setup ()
  (flycheck-select-checker 'rtags)
  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
  (setq-local flycheck-check-syntax-automatically nil))
;; c-mode-common-hook is also called by c++-mode
(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)

(provide 'init-rtags)
