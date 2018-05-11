;(require 'guess-style)
;(setq jedi:server_args
;	'("--virtual-env" "~/.virtualenvs/lx"))

(with-eval-after-load 'python
  (message "load python module start")
  (require 'jedi)
  (add-hook 'python-mode-hook
            (lambda ()
              (modify-syntax-entry ?_ "w") ;_作为字的一部分
              (elpy-mode 1)
              (setq elpy-rpc-backend "jedi")
                                        ;(setq python-check-command "/usr/local/bin/flake8 --ignore=E501,E302,E231,W191,E128,E261,E251,E203,E303,E226")
              (setq python-check-command "pylint --rcfile=~/lx/development/server/yao.lint")
              (setq elpy-syntax-check-command "pylint --rcfile=~/lx/development/server/yao.lint")
              (setq flycheck-highlighting-mode 'lines)
              (setq python-indent 4)
              (setq flycheck-idle-change-delay 5)
              (setq tab-width 4)))

  
                                        ; set key binding
                                        ; (define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
                                        ;(define-key python-mode-map (kbd "M-,") 'jedi:goto-definition-pop-marker)
  (define-key python-mode-map (kbd "M-?") 'jedi:show-doc)
                                        ;(define-key python-mode-map (kbd "M-/") 'jedi:get-in-function-call)
  (message "load elpy")
  (require 'elpy)
  (define-key elpy-mode-map (kbd "M-*") nil)
  )

                    ; close flymake,  start flycheck
; (when (require 'flycheck nil t)
;   (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
;(add-hook 'elpy-mode-hook (lambda () (local-unset-key (kbd "M-*"))))

;(add-hook 'python-mode-hook 'guess-style-guess-tabs-mode)
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



(provide 'init-python-mode)
