(my-install-package 'cquery)
(require 'cquery)
(setq cquery-executable "cquery")
(setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))

(defun cquery-enable ()
  (lsp-cquery-enable)
  (define-key evil-normal-state-map (kbd "C-p") 'lsp-ui-peek-jump-forward)
  (define-key evil-normal-state-map (kbd "C-t") 'lsp-ui-peek-jump-backward)
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  ;; Alternatively, use lsp-ui-peek interface
  (lsp-ui-peek-find-custom 'base "$cquery/base")
  (lsp-ui-peek-find-custom 'callers "$cquery/callers")
  (lsp-ui-peek-find-custom 'random "$cquery/random") ;; jump to a random declaratio
  (lsp-ui-peek-find-workspace-symbol "pattern 0")
)

(add-hook 'c-mode-hook #'cquery-enable)
(add-hook 'c++-mode-hook #'cquery-enable)

(provide 'init-cquery)