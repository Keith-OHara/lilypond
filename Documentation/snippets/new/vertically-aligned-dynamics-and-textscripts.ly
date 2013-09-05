\version "2.17.27"

\header {
  lsrtags = "spacing, tweaks-and-overrides, workaround"

  texidoc = "
All @code{DynamicLineSpanner} objects (hairpins and dynamic texts) are
placed with their reference line at least @code{'staff-padding} from
the staff, unless other notation forces them to be farther.
Setting @code{'staff-padding} to a sufficiently large value aligns the
dynamics.

The same idea, together with @code{\\textLengthOn}, is used to align
the text scripts along their baseline.

"
  doctitle = "Vertically aligned dynamics and textscripts"
}
\markup \vspace #1 %avoid LSR-bug

music = \relative c' {
  a'2\p b\f
  e4\p f\f\> g, b\p
  c2^\markup { \huge gorgeous } c^\markup { \huge fantastic }
}

{
  \music
  \break
  \override DynamicLineSpanner.staff-padding = #3
  \textLengthOn
  \override TextScript.staff-padding = #1
  \music
}
