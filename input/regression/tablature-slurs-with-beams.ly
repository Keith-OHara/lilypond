\version "2.17.20"

\header
{
  texidoc = "
Slur placement in complementary tablatures should not be affected by
either automatic or manual beaming.
"
}

guitarSolo = {
  \time 3/4
  \set Timing.beamExceptions = #'((end . (((1 . 8) . (4 2)))))
  <<
    {bes'2( aes'8-. r)} \\
    {r8 cis(-\tag #'beam [ b f'-\tag #'beam ]) <d f'>-. r}
  >>
  \bar "|."
}

guitarSolos = {
  \tempo "Manual beams"
  \guitarSolo
  \tempo "Automatic beams"
  \removeWithTag #'beam \guitarSolo
}

\score {
  <<
    \new StaffGroup <<
      \new Staff { \clef "treble_8" \guitarSolos }
      \new TabStaff \guitarSolos
    >>
    \new TabStaff \with { \tabFullNotation } \guitarSolos
  >>
}
