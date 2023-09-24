(setq user-full-name "izzy Meyer"
      user-mail-address "izder456@disroot.org")

(setq doom-font (font-spec :family "Spleen" :size 16 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'Regular))
(setq doom-theme 'doom-gruvbox)

(setq fancy-splash-image (concat doom-user-dir "hantyumi.png"))

(with-eval-after-load 'doom-themes
  (doom-themes-treemacs-config))

;; Language Specifics

;; Perl
(fset 'perl-mode 'cperl-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in)
(add-hook 'clojure-mode-hook #'minimap-mode)
(add-hook 'clojure-mode-hook #'treemacs)

;; Discord
(require 'elcord)
(elcord-mode)

;; XClip
(xclip-mode)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")
(setq display-line-numbers-type t)
(add-hook 'scheme-mode-hook #'geiser-mode--maybe-activate)
