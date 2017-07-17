
(global-set-key (kbd "C-x g") 'magit-status)
(remove-hook 'magit-status-headers-hook #'magit-insert-upstream-branch-header)
(remove-hook 'magit-status-headers-hook #'magit-insert-push-branch-header)
(remove-hook 'magit-status-headers-hook #'magit-insert-unpulled-cherries)
(provide 'init-magit)
