(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
			[default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
			(vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#262626"))
 '(ansi-term-color-vector
			[unspecified "#263238" "#f07178" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#82aaff" "#eeffff"])
 '(custom-safe-themes
			(quote
				("732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "80930c775cef2a97f2305bae6737a1c736079fdcc62a6fdf7b55de669fbbcd13" "446cc97923e30dec43f10573ac085e384975d8a0c55159464ea6ef001f4a16ba" default)))
 '(fci-rule-color "#3a3a3a")
 '(hl-sexp-background-color "#121212")
 '(package-selected-packages
			(quote
				(aggressive-indent centered-cursor-mode htmlize org-bullets base16-theme flycheck-color-mode-line powerline material-theme evil auto-compile use-package)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
			(quote
				((20 . "#f36c60")
					(40 . "#ff9800")
					(60 . "#fff59d")
					(80 . "#8bc34a")
					(100 . "#81d4fa")
					(120 . "#4dd0e1")
					(140 . "#b39ddb")
					(160 . "#f36c60")
					(180 . "#ff9800")
					(200 . "#fff59d")
					(220 . "#8bc34a")
					(240 . "#81d4fa")
					(260 . "#4dd0e1")
					(280 . "#b39ddb")
					(300 . "#f36c60")
					(320 . "#ff9800")
					(340 . "#fff59d")
					(360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq vc-follow-symlinks t)
(org-babel-load-file "~/.emacs.d/configuration.org")
