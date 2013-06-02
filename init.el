(require 'package)

(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))

(add-to-list 'load-path "~/.emacs.d/config")
