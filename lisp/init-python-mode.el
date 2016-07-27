(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
(add-hook 'python-mode-hook (lambda ()
                                (guess-style-guess-tab-width)))
(add-hook 'python-mode-hook
    (lambda ()
	    (setq indent-tabs-mode t)
	    (setq tab-width 4)
	    (setq python-indent 4)
		(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(provide 'init-python-mode)