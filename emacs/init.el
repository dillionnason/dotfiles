(menu-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "Iosevka Fixed 16")

(ido-mode 1)
(ido-everywhere 1)

(global-display-line-numbers-mode 1)
(setq line-numbers-type 'relative)

(defun setup-c-mode()
  (setq indent-tabs-mode t)
  (setq c-basic-offset 8)
  (setq tab-width 8))

(add-hook 'c-mode-hook 'setup-c-mode)

(use-package projectile
  :ensure t)

(use-package evil
  :after (projectile)
  :ensure t
  :config
  (evil-mode 1)
  (evil-set-leader 'normal (kbd "<SPC>") nil)
  (evil-define-key 'normal 'global (kbd "<leader>c") 'project-compile)
  (evil-define-key 'normal 'global (kbd "<leader>d") 'dired)
  (evil-define-key 'normal 'global (kbd "<leader>b") 'ido-switch-buffer))


(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))

(use-package company
  :ensure t)

(use-package eglot
  :after (company)
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package magit
  :ensure t)
