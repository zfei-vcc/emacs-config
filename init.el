;; Ensure package is initialized
(require 'package)

;; Add package archives
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))

;; Initialize the package system
(package-initialize)

;; Refresh package contents if the archives list changes
(unless package-archive-contents
  (package-refresh-contents))

(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
