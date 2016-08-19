(require 'guess-style)

(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-mode 1)
	    (setq elpy-rpc-backend "jedi")
	    (setq indent-tabs-mode t)
	    (setq python-check-command "flake8 --ignore=E501,E302,E231,W191")
	    (setq python-indent 4)
	    (setq tab-width 4)
		(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)

(provide 'init-python-mode)
