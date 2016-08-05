(require 'guess-style)

(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-mode 1)
	    (setq elpy-rpc-backend "jedi")
	    ; (setq indent-tabs-mode t)
	    (setq python-indent 4)
		(add-to-list 'write-file-functions 'delete-trailing-whitespace)))

(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)

(provide 'init-python-mode)
