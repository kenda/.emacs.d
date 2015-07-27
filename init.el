(require 'cl)
(require 'org)

(require 'cask)
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(when (file-exists-p "~/.emacs.d/local.conf.el")
  (load "~/.emacs.d/local.conf.el"))

(require 'use-package)
(org-babel-load-file "~/.emacs.d/config.org")
