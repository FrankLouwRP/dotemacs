(require 'use-package-ensure)
(setq use-package-always-ensure t)
(global-set-key [remap dabbrev-expand] 'hippie-expand)
(global-set-key [remap list-buffers] 'ibuffer)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(fido-vertical-mode t)
(which-key-mode t)
(setq visible-bell t)
(line-number-mode t)
(global-hl-line-mode t)
(blink-cursor-mode -1)x
(setq line-spacing 3)

(keymap-global-set "C-c c" 'org-capture)
(keymap-global-set "C-c a" 'org-agenda)
(keymap-global-set "C-c l" 'org-store-link)
(setq org-directory "~/gtd")
(setq org-agenda-files (list org-directory))
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)))
(setq org-archive-location (concat org-directory "/archive.org::"))

(add-hook 'org-mode-hook (lambda ()
			   (org-indent-mode)
			   (visual-line-mode)))

(set-face-attribute 'default nil :height 130)
