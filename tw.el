(defun tw (&optional sleeptime)
  "twitter mode"
  (interactive "p")
  (setup-tw))

(defvar tw-path "/path/to/tw")

(defun setup-tw ()
  (setq process-coding-system-alist
	(cons '("tw" . utf-8) process-coding-system-alist))
  (switch-to-buffer (get-buffer-create "*tw*") t)
  (setq truncate-lines nil)
  (setq truncate-partial-width-windows nil)
  (with-current-buffer
      (make-comint "tw" tw-path nil "--no-color")
    (buffer-string)))

(provide 'tw)
