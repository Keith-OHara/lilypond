%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "fretted-strings"

%% Translation of GIT committish: 5cab62e8738ff02eead438042743116391f306f5
  texidoces = "
La polifonía se crea de la misma forma en un @code{TabStaff} que
en una pauta normal.

"
  doctitlees = "Polifonía en tablaturas"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Polyphonie kann in einer Tabulatur (@code{TabStaff}) genauso wie in einem
normalen Notensystem erstellt werden.

"
  doctitlede = "Polyphonie in einer Tabulatur"
%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
Une section polyphonique s'obtient dans un @code{TabStaff} de la
même manière que dans une portée normale.

"
  doctitlefr = "Polyphonie en mode tablature"


  texidoc = "
Polyphony is created the same way in a @code{TabStaff} as in a regular
staff.

"
  doctitle = "Polyphony in tablature"
} % begin verbatim

upper = \relative c' {
  \time 12/8
  \key e \minor
  \voiceOne
  r4. r8 e, fis g16 b g e e' b c b a g fis e
}

lower = \relative c {
  \key e \minor
  \voiceTwo
  r16 e d c b a g4 fis8 e fis g a b c
}

\score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \context Voice = "upper" \upper
        \context Voice = "lower" \lower
      >>
      \new TabStaff = "guitar tab" <<
        \context TabVoice = "upper" \upper
        \context TabVoice = "lower" \lower
      >>
    >>
  >>
}

