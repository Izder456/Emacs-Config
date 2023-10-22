;; Fonts
(setq doom-font (font-spec :family "Spleen" :size 16 :weight 'regular)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'regular)
      doom-unicode-font (font-spec :family "Unifont" :weight 'semi-bold)
      doom-big-font (font-spec :family "Spleen" :size 18 :weight 'semi-bold))
(setq doom-theme 'doom-gruvbox)

;; Giegue!!
(setq fancy-splash-image (concat doom-user-dir "giegue.png"))

;; $HOME Remove Projectile
(after! projectile (setq projectile-project-root-files-bottom-up (remove ".git"
  projectile-project-root-files-bottom-up)))

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

(show-paren-mode 1)

;; Delete without register
(evil-define-operator evil-delete-without-register (beg end type yank-handler)
  (interactive "<R><y>")
  (evil-delete beg end type ?_ yank-handler))
(define-key evil-normal-state-map (kbd "d") 'evil-delete-without-register)
(define-key evil-visual-state-map (kbd "d") 'evil-delete-without-register)
(define-key evil-normal-state-map (kbd "D") 'evil-delete)
(define-key evil-visual-state-map (kbd "D") 'evil-delete)

;;
; Docs
;;

;; Org-mode
(setq org-directory "~/Documents")

;; nrepl
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "*nrepl*")
(add-hook 'nrepl-mode-hook 'paredit-mode)

;;
; Scripting
;;

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

;; Shell Debugging
(require 'shx)
(add-hook 'shell-mode-hook 'shx-mode)
(require 'shell-pop)
(setq shell-pop-autocd-to-working-dir t)
(global-set-key (kbd "M-SPC") 'shell-pop)

;;
; Lisps
;;

;; HyLang
(add-hook 'hy-mode-hook 'paredit-mode)

;; ELisp
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)

;; Common Lisp
(add-hook 'common-lisp-mode-hook 'paredit-mode)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")
(setq display-line-numbers-type t)
(add-hook 'scheme-mode-hook 'geiser-mode--maybe-activate)
(add-hook 'scheme-mode-hook 'paredit-mode)

;; Clojure
(add-hook 'clojure-mode-hook 'cider-jack-in)
(add-hook 'clojure-mode-hook 'paredit-mode)

;; XClip
(xclip-mode 1)

;; Mouse Support
(xterm-mouse-mode 1)

;; Rainbow
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'text-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-mode)
(add-hook 'text-mode-hook 'rainbow-mode)

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
