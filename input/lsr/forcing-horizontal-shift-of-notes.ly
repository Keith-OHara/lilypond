%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.0"

\header {
  lsrtags = "simultaneous-notes, tweaks-and-overrides"

 doctitlees = "Forzar el desplazamiento horizontal de las notas"
 texidoces = "
Cuando el motor de tipografiado no es capaz de todo, se puede usar la
propiedad force-hshift del objeto NoteColumn para sobreescribir
decisiones de tipografiado.  Las unidades de medida que se usan aquí
son espacios de pentagrama.

"

%% Translation of GIT committish :<0364058d18eb91836302a567c18289209d6e9706>
  texidocde = "
Wenn es zu Zusammenstößen kommt, kann mit folgender Lösung eine andere
Position manuell eingestellt werden.  Die Einheiten hier sind
Notenlinienzwischenräume.

"
  doctitlede = "Horizontale Verschiebung von Noten erzwingen"

  texidoc = "
When the typesetting engine cannot cope, the following syntax can be
used to override typesetting decisions. The units of measure used here
are staff spaces.

"
  doctitle = "Forcing horizontal shift of notes"
} % begin verbatim

\relative c' <<
  {
    <d g>2 <d g>
  }
  \\
  {
    <b f'>2
    \once \override NoteColumn #'force-hshift = #1.7
    <b f'>2
  }
>>
