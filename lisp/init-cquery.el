(my-install-package 'cquery)
(require 'cquery)
(setq cquery-executable "cquery")
(setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))

(defun cquery-enable ()
  (lsp-cquery-enable)
)

(add-hook 'c-mode-hook #'cquery-enable)
(add-hook 'c++-mode-hook #'cquery-enable)

(provide 'init-cquery)