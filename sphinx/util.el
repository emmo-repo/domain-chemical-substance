;;; Utils for building BattMo doc

;; Use user-login-name to get user name
;; (cond '(compare-strings user-login-name "xavier")

(pcase (user-login-name)
  ("xavier" (progn
              (pyvenv-activate "~/Python/battinfo-doc-3.7-env/")
              (setq docdir "/home/xavier/Python/domain-chemical-substance/sphinx/")
              ))
  )

(defun battinfodoc-local-open ()
  "Open locally built documentation in browser"
  (interactive)
  (browse-url (concat docdir "_build/html/index.html"))
  )

(defun battinfodoc-build ()
  "Build BattMo documentation"
  (interactive)
  (let* ((outputbuffer (get-buffer-create "*buildoutput*")))
    (pop-to-buffer outputbuffer)
    (cd docdir)
    (erase-buffer)
    (start-process "battinfo-build" outputbuffer "make" "html")
    )
  )

