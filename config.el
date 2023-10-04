
;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SET DOOM CONFIG OPTS ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq doom-font (font-spec :family "Spleen" :size 16 :weight 'Regular)
      doom-variable-pitch-font (font-spec :family "Spleen" :size 16 :weight 'Regular))
(setq doom-theme 'doom-gruvbox)

(setq fancy-splash-image (concat doom-user-dir "giegue.png"))

(setq org-directory "~/Documents")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; LANGUAGE-SPECIFIC SETTINGS ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Perl
(fset 'perl-mode 'cperl-mode)

;; Clojure
(add-hook 'clojure-mode-hook #'cider-jack-in)

;; Chicken Scheme
(setq scheme-program-name "chicken-csi -c:")
(setq display-line-numbers-type t)
(add-hook 'scheme-mode-hook #'geiser-mode--maybe-activate)

;;;;;;;;;;;;;;;;
;; AUTOSTARTS ;;
;;;;;;;;;;;;;;;;

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
