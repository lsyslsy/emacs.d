;(require 'guess-style)
;(setq jedi:server_args
;	'("--virtual-env" "~/.virtualenvs/lx"))

(with-eval-after-load 'python
  (my-install-package 'pyvenv)
  (add-hook 'python-mode-hook
            (lambda ()
              (modify-syntax-entry ?_ "w") ;_作为字的一部分
              (if (memq window-system '(mac ns x))
                (progn
                  (setq python-check-command "pylint --rcfile=~/lx/development/server/yao.lint"))
                (setq python-check-command "pylint"))
              (setq flycheck-highlighting-mode 'lines)
              (setq python-indent 4)
              (setq flycheck-idle-change-delay 5)

              (setq tab-width 4)))
  )


(provide 'init-python-mode)
