;;; doom-github-light-theme.el --- GitHub-Light theme -*- lexical-binding: t; no-byte-compile: t; -*-

(require 'doom-themes)

(def-doom-theme doom-github-light
  "A light GitHub theme."

  ;; name        default   256       16
  ((bg         '("#ffffff" nil       nil ))
   (bg-alt     '("#f6f8fa" nil       nil ))
   (base0      '("#ffffff" "#dfdfdf" nil ))
   (base1      '("#f5f5f5" "#979797" nil ))
   (base2      '("#eeeeee" "#6b6b6b" nil ))
   (base3      '("#e0e0e0" "#525252" nil ))
   (base4      '("#bdbdbd" "#3f3f3f" nil ))
   (base5      '("#9e9e9e" "#262626" nil ))
   (base6      '("#757575" "#2e2e2e" nil ))
   (base7      '("#616161" "#1e1e1e" nil ))
   (base8      '("#424242" "black"   nil ))
   (fg         '("#24292f" "#24292f" nil ))
   (fg-alt     '("#666666" "#666666" nil ))

   (grey       "#6a737d")
   (grey2 "#babbbd")
   (light-grey "#f0f2f4")
   (ln-curr-line "#24292e")
   (red        '("#D73A49" "#D73A49" nil ))
   (orange     '("#e36209" "#e36209" nil ))
   (green      '("#28a745" "#28a745" nil ))
   (teal       '("#22863a" "#22863a" nil ))
   (yellow     '("#dbab09" "#dbab09" nil ))
   (light-blue "#2188ff")
   (blue       '("#005CC5" "#005CC5" nil ))
   (dark-blue  '("#032F62" "#032F62" nil ))
   (dark-blue-2 "#044289")
   (selection "#dbe9f9")
   (magenta    '("#5a32a3" "#5a32a3" nil ))
   (violet     '("#6F42C1" "#6F42C1" nil ))
   (cyan       '("#0598bc" "#0598bc" nil ))
   (dark-cyan  '("#3192aa" "#3192aa" nil ))

   ;; face categories -- required for all themes
   (highlight      dark-blue-2)
   (vertical-bar   grey2)
   (selection     dark-blue-2)
   (builtin        red)
   (comments       grey)
   (doc-comments   grey)
   (constants      blue)
   (functions      red)
   (keywords       red)
   (methods        teal)
   (operators      red)
   (type           orange)
   (strings        dark-blue)
   (variables      fg)
   (numbers        red)
   (region         "#dbe9f9" )
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    light-blue)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-pad 1)

   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg bg)
   (modeline-bg-l bg-alt)
   (modeline-bg-inactive   bg)
   (modeline-bg-inactive-l (doom-darken bg-alt 0.1)))

  ;;;; Base theme face overrides
  (((font-lock-comment-face &override)
    :slant 'italic)
   (lazy-highlight  :background "#fff2be")
   ((line-number &override) :foreground grey2)
   ((line-number-current-line &override) :foreground ln-curr-line)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box `(:line-width ,-modeline-pad :color ,vertical-bar))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground highlight)

   ;;;; doom-modeline
   (doom-modeline-bar :background highlight)
   ;;;; ivy
   (ivy-current-match :background base3)
   ;;;; ivy-posframe
   (ivy-posframe :background bg-alt)
   (ivy-posframe-border :background base1)
   ;;;; highlight-numbers
   (highlight-numbers-number :foreground violet :weight 'normal)
   ;;;; solaire-mode
   ;;;; (solaire-hl-line-face
   ; :background modeline-bg-l
    ;)
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    )
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    )))
    ;;;; org
    (custom-set-faces
     '(org-table ((t (:foreground "#032F62"))))
     )
    ;;;; treemacs
    (custom-set-faces
     '(treemacs-root-face ((t (:foreground "#24292f" :bold f :height 1.1)))))

;;; doom-github-light-theme.el ends here
