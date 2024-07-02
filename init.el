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

;; Set the path to the config.org file
(setq config-org-file (expand-file-name "config.org" "~/.emacs.d/emacs-config/"))

;; Load Org mode
(require 'org)

;; Load the config.org file
(when (file-readable-p config-org-file)
  (org-babel-load-file config-org-file))
