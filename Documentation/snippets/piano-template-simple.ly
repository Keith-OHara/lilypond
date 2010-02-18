%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "keyboards, template"

%% Translation of GIT committish: 5cab62e8738ff02eead438042743116391f306f5
  texidoces = "
Presentamos a continuación una plantilla de piano sencilla con algunas
notas.

"
  doctitlees = "Plantilla de piano (sencilla)"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Hier ein einfaches Klaviersystem.

"
  doctitlede = "Vorlage für einfache Klaviernotation"
%% Translation of GIT committish: 9ba35398048fdf1ca8c83679c7c144b1fd48e75b
  texidocfr = "
Voici une simple partition pour piano avec quelques notes.

"
  doctitlefr = "Piano -- cannevas simple"

  texidoc = "
Here is a simple piano staff with some notes.

"
  doctitle = "Piano template (simple)"
} % begin verbatim

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

