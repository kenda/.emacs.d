(require 'cl)
(require 'org)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(setq custom-file "~/.emacs.d/custom.el")

(when (file-exists-p "~/.emacs.d/local.conf.el")
  (load "~/.emacs.d/local.conf.el"))

(require 'use-package)
(org-babel-load-file "~/.emacs.d/config.org")
