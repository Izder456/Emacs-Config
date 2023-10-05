(setq doom-font (font-spec :family "Spleen" :size 16 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'Regular))
(setq doom-theme 'doom-gruvbox)

(setq fancy-splash-image (concat doom-user-dir "giegue.png"))

(custom-set-faces!
  '(doom-dashboard-banner :foreground "#EBDBB2" :background "#282828" :weight bold)
  '(doom-dashboard-footer :inherit font-lock-constant-face)
  '(doom-dashboard-footer-icon :inherit nerd-icons-red)
  '(doom-dashboard-loaded :inherit font-lock-warning-face)
  '(doom-dashboard-menu-desc :inherit font-lock-string-face)
  '(doom-dashboard-menu-title :inherit font-lock-function-name-face))

(custom-set-faces!
  '(mode-line :family "Spleen" :size 12 :height 0.9)
  '(mode-line-inactive :family "Spleen" :size 12 :height 0.9))

;; Org-mode
(setq org-directory "~/Documents")

;; Perl
(fset 'perl-mode 'cperl-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in)

;; C/++
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")
(setq display-line-numbers-type t)
(add-hook 'scheme-mode-hook #'geiser-mode--maybe-activate)

;; XClip
(xclip-mode 1)

;; Mouse Support
(xterm-mouse-mode 1)

;; Rainbow
(rainbow-mode)
(rainbow-delimiters-mode)

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
