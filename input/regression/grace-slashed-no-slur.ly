\version "2.17.15"

\header
{
  texidoc = "Create grace notes with slashed stem, but no slur. That can be used
  when the grace note is tied to the next note.
"
}
\relative c' {
  \slashedGrace c16~ c1
}
