\version "2.11.42"
\layout { ragged-right= ##t }
\header {
  doctitle = "Changing form of multi-measure rests"
  lsrtags = "rhythms,tweaks-and-overrides"
  texidoc = "
If there are 10 or fewer measures of rest, LilyPond prints
a series of longa and breve rests (called in German
Kirchenpausen - church rests) within the staff and
prints a simple line otherwise.  This default number of 10
may be changed by an override:
"}

\relative c'' {
\compressFullBarRests
R1*2 | R1*5 | R1*9
\override MultiMeasureRest #'expand-limit = 3
R1*2 | R1*5 | R1*9
}

