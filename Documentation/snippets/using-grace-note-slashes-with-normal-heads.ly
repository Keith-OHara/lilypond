% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.15
\version "2.15.15"

\header {
%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "

Es posible aplicar la barrita que cruza la barra de las
acciaccaturas, en otras situaciones.

"

  doctitlees = "Utilizar la barra que tacha las notas de adorno con notas normales"



%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Le trait que l'on trouve sur les hampes des acciaccatures peut
être appliqué dans d'autres situations.

"
  doctitlefr = "Utilisation de hampe barrée pour une note normale"

  lsrtags = "rhythms"

  texidoc = "
The slash through the stem found in acciaccaturas can be applied in
other situations.

"
  doctitle = "Using grace note slashes with normal heads"
} % begin verbatim


\relative c'' {
  \override Flag #'stroke-style = #"grace"
  c8( d2) e8( f4)
}

