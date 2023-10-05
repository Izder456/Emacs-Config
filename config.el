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
  '(mode-line :family "Spleen" :height 1.0)
  '(mode-line-inactive :family "Spleen" :height 1.0))

;; Autofix Fonts
(add-hook 'after-setting-font-hook #'cnfonts-set-font)

;; Org-mode
(setq org-directory "~/Documents")

;; Perl
(fset 'perl-mode 'cperl-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in)

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

;; Minimap Binds
(setq minimap-window-location 'right)
(map! :leader
      (:prefix ("t" . "toggle")
       :desc "Toggle minimap-mode" "m" #'minimap-mode))
