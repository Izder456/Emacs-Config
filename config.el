(setq user-full-name "izzy Meyer"
      user-mail-address "izder456@disroot.org")

(setq  doom-font (font-spec :family "desertedttf" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "desertedttf" :size 16)
      doom-unicode-font (font-spec :family "GohuFont 14 Nerd Font Propo" :size 16))

(setq doom-theme 'doom-gruvbox)

(setq fancy-splash-image (concat doom-user-dir "hantyumi.png"))

(with-eval-after-load 'doom-themes
  (doom-themes-treemacs-config))

;; Language Specifics

;; Perl
(fset 'perl-mode 'cperl-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in-universal)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")

(setq display-line-numbers-type t)
