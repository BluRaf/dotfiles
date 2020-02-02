;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Graphene
(require 'graphene)

;; Elcord
(require 'elcord)
(elcord-mode)

;; Default font
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(graphene-default-font "Gohufont-14")
 '(graphene-fixed-pitch-font "Gohufont-14")
 '(graphene-variable-pitch-font "Unifont-14")
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (elcord graphene)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
