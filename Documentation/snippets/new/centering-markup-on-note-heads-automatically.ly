\version "2.17.6"

\header {
  lsrtags = "text, tweaks-and-overrides, contexts-and-engravers"
  texidoc = "
For technical reasons, text scripts attached to note heads cannot
easily be centered on a note head's width, unlike articulations.

Instead of using trial-and-error offset tweaks, this snippet uses a
Scheme engraver to reset the horizontal parent of each markup to a
@code{NoteColumn}.  This also allows text to follow note heads which have
been shifted via @code{force-hshift}.
"
  doctitle = "Centering markup on note heads automatically"
}

#(define (Text_align_engraver ctx)
  (let ((scripts '())
        (note-column #f))
    (make-engraver
     (acknowledgers
      ((note-column-interface trans grob source)
       ;; cache NoteColumn in this Voice context
       (set! note-column grob))
      ((text-script-interface trans grob source)
       ;; whenever a TextScript is acknowledged,
       ;; add it to `scripts' list
       (set! scripts (cons grob scripts))))
     ((stop-translation-timestep trans)
      ;; if any TextScript grobs exist,
      ;; set NoteColumn as X-parent
      (for-each (lambda (script)
		  (set! (ly:grob-parent script X) note-column))
		scripts)
      ;; clear scripts ready for next timestep
      (set! scripts '())))))

\layout {
  \context {
    \Voice
    \consists #Text_align_engraver
    \override TextScript.X-offset =
      #ly:self-alignment-interface::aligned-on-x-parent
    \override TextScript.self-alignment-X = #CENTER
  }
}

\new Staff <<
  \relative c'' {
    \override NoteColumn.force-hshift = #3
    c1-\markup { \arrow-head #Y #DOWN ##t }
  }
  \\
  \relative c' {
    a4 a-\markup { \huge ^ } a a
  }
>>
