%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.0"

\header {
  lsrtags = "text"

  texidoces = "
Aunque normalmente las marcas de texto sólo se imprimen sobre el
pentagrama superior, también se pueden imprimir en otro pentagrama
cualquiera.

"
  doctitlees = "Imprimir marcas en cualquier pentagrama"

%% Translation of GIT committish :0364058d18eb91836302a567c18289209d6e9706
  texidocde = "
Normalerweise werden Textzeichen nur über dem obersten Notensystem gesetzt.  Sie
können aber auch über jedem System ausgegeben werden.

"
  doctitlede = "Zeichen über jedem System ausgeben"

  texidoc = "
Although text marks are normally only printed above the topmost staff,
they may also be printed on every staff.

"
  doctitle = "Printing marks on every staff"
} % begin verbatim

\score {
  <<
    \new Staff { c''1 \mark "molto" c'' }
    \new Staff { c'1 \mark "molto" c' }
  >>
  \layout {
    \context {
      \Score
      \remove "Mark_engraver"
      \remove "Staff_collecting_engraver"
    }
    \context {
      \Staff
      \consists "Mark_engraver"
      \consists "Staff_collecting_engraver"
    }
  }
}
