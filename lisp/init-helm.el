(use-package helm
  :ensure t)
(require 'helm)
(require 'helm-config)

; 去掉默认的C-x c绑定，还是绑定到C-c h
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))


(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-c h o") 'helm-occur)
; 替换默认的buffer
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

;(setq helm-autoresize-max-height 0)
;(setq helm-autoresize-min-height 20)
;(helm-autoresize-mode 1)
(use-package helm-projectile
  :ensure t)
(use-package helm-ag
  :ensure t)
(require 'helm-projectile)
(helm-projectile-on)


(use-package helm-swoop
  :ensure t)

; helm etags 
(use-package helm-etags-plus
  :ensure t)
(require 'helm-etags-plus)
(global-set-key "\M-." 'helm-etags-plus-select)
 ;;list all visited tags
(global-set-key "\M-*" 'helm-etags-plus-history)
;;go back directly
(global-set-key "\M-," 'helm-etags-plus-history-go-back)
;;go forward directly
(global-set-key "\M-/" 'helm-etags-plus-history-go-forward)

(provide 'init-helm)
