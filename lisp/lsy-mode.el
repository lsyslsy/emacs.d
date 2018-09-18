(add-to-list 'auto-mode-alist (cons "\\.lsy\\'" 'lsy-mode))

(define-derived-mode lsy-mode prog-mode "LsyFile"
  "Major mode for .lsy files.")

(defvar fix-font-lock-var
  '(("\\<\\(FIXME\\|TODO\\)" 1 font-lock-warning-face t)
    ))

(define-minor-mode shangyao-mode
  "辅助自用的minor模式.
可以做很多事情,调用方式通过 `\\[shangyao-mode]'."
  ;; 不显示怎么体现出来哈哈
  :lighter " 上耀"
  (if shangyao-mode
      (font-lock-add-keywords nil fix-font-lock-var)
    (font-lock-remove-keywords nil fix-font-lock-var))
  (font-lock-flush)
  )
(add-hook 'prog-mode-hook 'shangyao-mode)
font-lock-defaults
font-lock-keywords
(provide 'lsy-mode)
