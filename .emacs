;; nREPL
(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(setq nrepl-hide-special-buffers t)
(setq nrepl-tab-command 'indent-for-tab-command)
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)

(add-to-list 'same-window-buffer-names "*nrepl*")

(add-hook 'nrepl-mode-hook 'subword-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
(add-hook 'nrepl-mode-hook 'highlight-sexps-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'highlight-sexps-mode)

;; Common LISP
(setq inferior-lisp-program "/usr/local/bin/clisp") ; your Lisp system
(add-to-list 'load-path "~/.emacs.d/slime/")  ; your SLIME directory
(require 'slime)
(slime-setup)

;; Rainbows!!
(add-hook 'lisp-mode-hook 'rainbow-delimiters-mode)

;; Appearance
(set-face-attribute 'default nil :height 240)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-sexp-background-colors (quote ("light cyan" "white")))
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-sexp-face ((t nil)) t))

(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

(shell)

(show-paren-mode t)
(add-to-list 'load-path "~/.emacs.d/downloads")
(require 'highlight-parentheses)
(require 'highlight-sexps)
(add-hook 'lisp-mode-hook 'highlight-parentheses-mode)
(add-hook 'lisp-mode-hook 'highlight-sexps-mode)

;; some more edits
