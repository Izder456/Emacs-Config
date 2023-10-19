;; Fonts
(setq doom-font (font-spec :family "Spleen" :size 16 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'Regular))
(setq doom-theme 'doom-gruvbox)

;; Giegue!!
(setq fancy-splash-image (concat doom-user-dir "giegue.png"))

;; Font
(custom-set-faces!
  '(doom-dashboard-banner :foreground "#EBDBB2" :background "#282828" :weight bold)
  '(doom-dashboard-footer :inherit font-lock-constant-face)
  '(doom-dashboard-footer-icon :inherit nerd-icons-red)
  '(doom-dashboard-loaded :inherit font-lock-warning-face)
  '(doom-dashboard-menu-desc :inherit font-lock-string-face)
  '(doom-dashboard-menu-title :inherit font-lock-function-name-face))

;; Font Customs
(custom-set-faces!
  '(mode-line :family "Spleen" :size 12 :height 0.9)
  '(mode-line-inactive :family "Spleen" :size 12 :height 0.9))

;; Syntax Highlight
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))

;; Org-mode
(setq org-directory "~/Documents")

;; Perl
(require 'cperl-mode)
(mapc
 (lambda (pair)
   (if (eq (cdr pair) 'perl-mode)
       (setcdr pair 'cperl-mode)))
 (append auto-mode-alist interpreter-mode-alist))
(setq cperl-invalid-face nil)
(setq cperl-indent-parens-as-block t)
(setq cperl-font-lock t)
(setq cperl-close-paren-offset (- cperl-indent-level))
(add-hook 'cperl-mode-hook 'flycheck-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")
(setq display-line-numbers-type t)
(add-hook 'scheme-mode-hook #'geiser-mode--maybe-activate)

;; Shell Debugging
(require 'shx)
(add-hook 'shell-mode-hook 'shx-mode)
(require 'shell-pop)
(setq shell-pop-autocd-to-working-dir t)
(global-set-key (kbd "M-SPC") 'shell-pop)

;; XClip
(xclip-mode 1)

;; Mouse Support
(xterm-mouse-mode 1)

<<<<<<< HEAD
<<<<<<< HEAD
;; Rainbow
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'text-mode-hook 'rainbow-delimiters-mdoe)
(add-hook 'prog-mode-hook 'rainbow-mode)
(add-hook 'text-mode-hook 'rainbow-mode)
=======
=======
>>>>>>> f377804 (update a bit)
;; Rainbow-Parens
(add-hook 'text-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'org-mode-hook 'rainbow-delimiters-mode)
;; Rainbow-Mode
(add-hook 'text-mode-hook 'rainbow-mode)
(add-hook 'prog-mode-hook 'rainbow-mode)
(add-hook 'org-mode-hook 'rainbow-mode)
<<<<<<< HEAD
>>>>>>> f377804 (update a bit)
=======
>>>>>>> f377804 (update a bit)

;; Neotree
(after! neotree
  (setq neo-smart-open t
        neo-window-fixed-size nil))
(after! doom-themes
  (setq doom-neotree-enable-variable-pitch t))
(map! :leader
      :desc "Toggle neotree file viewer" "t n" #'neotree-toggle
      :desc "Open directory in neotree"  "d n" #'neotree-dir)

;; ORG-mode
(require 'org-auto-tangle)
(add-hook 'org-mode-hook 'org-auto-tangle-mode)

;; Minimap Binds
(setq minimap-window-location 'right)
(map! :leader
      (:prefix ("t" . "toggle")
       :desc "Toggle minimap-mode" "m" #'minimap-mode))
