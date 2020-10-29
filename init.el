;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cl)

; fetch the list of packages available
(package-refresh-contents)

; list the packages you want
(setq package-list '( use-package
                      org
                      solarized-theme
                      ))

; list the repositories containing them
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)
(require 'org)

(when (file-exists-p "~/.emacs.d/local.conf.el")
  (load "~/.emacs.d/local.conf.el"))

(org-babel-load-file "~/.emacs.d/config.org")
