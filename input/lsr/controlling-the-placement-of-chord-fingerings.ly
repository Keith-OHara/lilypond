%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.0"

\header {
  lsrtags = "editorial-annotations, chords, keyboards, fretted-strings"

  texidoces = "
Se puede controlar con precisión la colocación de los números de digitación.

"
  doctitlees = "Controlar la colocación de las digitaciones de acordes"


%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
Le positionnement des doigtés peut être contrôlé de manière très précise.

"
  doctitlefr = "Conrôle du positionnement des doigtés"

%% Translation of GIT committish :<0364058d18eb91836302a567c18289209d6e9706>
  texidocde = "
Die Position von Fingersatzzahlen kann exakt kontrolliert werden.

"
  doctitlede = "Position von Fingersatz in Akkorden kontrollieren"

  texidoc = "
The placement of fingering numbers can be controlled precisely.

"
  doctitle = "Controlling the placement of chord fingerings"
} % begin verbatim

\relative c' {
  \set fingeringOrientations = #'(left)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(down right up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(up)
  <c-1 e-3 a-5>4
  \set fingeringOrientations = #'(left)
  <c-1>2
  \set fingeringOrientations = #'(down)
  <e-3>2
}

