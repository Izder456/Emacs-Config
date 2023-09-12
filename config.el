(setq user-full-name "izzy Meyer"
      user-mail-address "izder456@disroot.org")
1
(setq doom-font (font-spec :family "Spleen 8x16" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'semi-light))
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
