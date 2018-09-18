;; header holder
(defvar yao-py-header "'''
Created by Yao
Date: %s

'''
")

;; for fun
(defun yao-add-file-header ()
  "Add personal header begin of python file"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (insert
     (format yao-py-header (format-time-string "%Y-%m-%d")))))

(provide 'init-yaolib)
