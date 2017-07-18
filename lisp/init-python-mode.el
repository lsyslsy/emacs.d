(require 'guess-style)
(require 'jedi)
(setq jedi:server_args
	'("--virtual-env" "~/.virtualenvs/lx"))


(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-mode 1)
	    (setq elpy-rpc-backend "jedi")
	    (setq indent-tabs-mode t)
	    ;(setq python-check-command "/usr/local/bin/flake8 --ignore=E501,E302,E231,W191,E128,E261,E251,E203,E303,E226")
	    (setq python-check-command "pylint --rcfile=~/lx/development/server/yao.lint")
 		(setq elpy-syntax-check-command "pylint --rcfile=~/lx/development/server/yao.lint")
 		(setq flycheck-highlighting-mode 'lines)
	    (setq python-indent 4)
	    (setq tab-width 4)))

;(add-hook 'python-mode-hook
;		  (lambda()
;			(setq venv-location "~/pythonenv/")
;			(venv-initialize-interactive-shells)
;			(venv-initialize-eshell))
		  
	    ;; grammal check: flycheck
(add-hook 'after-init-hook #'global-flycheck-mode);global enable
                    ; close flymake,  start flycheck
; (when (require 'flycheck nil t)
;   (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
;   (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
; (defvar jedi-config:use-system-python t)
; (defun jedi-config:set-python-executable ()
;        (set-exec-path-from-shell-PATH) ;; for OS X
;        (make-local-variable 'jedi:server-command)
;        (set 'jedi:server-command
;              (list (executable-find "python3")
;                    (cadr default-jedi-server-command))))
; (when jedi-config:use-system-python
;       (add-hook 'python-mode-hook
;                  'jedi-config:set-python-executable))

;  jedi 使用autocomplete作为后端
(defun jedi-config:setup-keys ()
       (local-set-key (kbd "M-.") 'jedi:goto-definition)
       (local-set-key (kbd "M-,") 'jedi:goto-definition-pop-marker)
       (local-set-key (kbd "M-?") 'jedi:show-doc)
       (local-set-key (kbd "M-/") 'jedi:get-in-function-call))
(add-hook 'python-mode-hook 'jedi-config:setup-keys)


(provide 'init-python-mode)
