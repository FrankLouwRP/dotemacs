(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes nil)
 '(desktop-save-mode nil)
 '(fido-vertical-mode t)
 '(org-agenda-files '("c:/Users/frank.louw/AppData/Roaming/org/notes.org"))
 '(org-capture-templates nil)
 '(org-list-allow-alphabetical t)
 '(org-log-into-drawer t)
 '(package-selected-packages
   '(docker helm kubernetes magit marginalia org-bullets which-key))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(truncate-lines t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 120 :width normal :foundry "outline" :family "Fira Code")))))

(use-package docker
  :ensure t)
(use-package kubernetes
  :ensure t)
(use-package which-key
  :ensure t
  :config
  (which-key-mode +1))
(use-package marginalia
  :ensure t
  :config
  (marginalia-mode t))

(use-package magit
  :ensure t)

(add-hook 'org-mode-hook (lambda ()
			   (visual-line-mode)
			   (org-indent-mode)))

(global-set-key [remap list-buffers] 'ibuffer)
(global-set-key (kbd "M-o") 'other-window)
; test
(setq org-directory "~/org/")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-default-notes-file "Inbox")
         "* TODO %?\n  %i\n  %a")
        ("i" "Inbox Note" entry (file+headline org-default-notes-file "Inbox")
         "* %?\n:LOGBOOK:\n- Entered on %U\n  %i\n:END:")
	("m" "Meeting" entry (file+headline org-default-notes-file "Meeting notes")
         "* %? %U\n** Attendees\n- Frank Louw\n** Notes\n** Questions\n** Actions\n")
	("j" "Journal" entry (file+datetree org-default-notes-file "Journal")
         "* %?\n:LOGBOOK:\n- Entered on %U\n  %i\n:END:")))


(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq line-spacing 3)
(setq visible-bell t)

(global-hl-line-mode 1)
(blink-cursor-mode -1)


