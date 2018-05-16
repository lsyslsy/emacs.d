
;; 在solarize-dark下面visual的光标看不见
(setq evil-visual-state-cursor '(t "yellow"))
(setq evil-normal-state-cursor '(t "#657b83"))
(my-install-package 'evil)
(require 'evil)

; helm 不开启evil，否则一点击就sb了
(add-to-list 'evil-emacs-state-modes 'helm-major-mode)
; unbound
(define-key evil-normal-state-map (kbd "M-.") nil)
(evil-mode 1)

(provide 'init-evil)
