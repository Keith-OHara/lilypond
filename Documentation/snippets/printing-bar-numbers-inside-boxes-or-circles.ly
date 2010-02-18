%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "rhythms, tweaks-and-overrides"

%% Translation of GIT committish: 5cab62e8738ff02eead438042743116391f306f5
  texidoces = "

Los números de compás también se pueden imprimir dentro de rectángulos o de circunferencias.

"
  doctitlees = "Imprimir números de compás dentro de rectángulos o circunferencias"


%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Taktnummern können auch in Boxen oder Kreisen gesetzt werden.

"
  doctitlede = "Setzen von Taktnummern in Kästen oder Kreisen"


%% Translation of GIT committish: 21c8461ea87cd670a35a40b91d3ef20de03a0409
  texidocfr = "
Les numéros de mesures peuvent être encadrés ou entourés d'un cercle.

"
  doctitlefr = "Inscrire le numéro de mesure dans un cadre ou un cercle"

  texidoc = "
Bar numbers can also be printed inside boxes or circles.

"
  doctitle = "Printing bar numbers inside boxes or circles"
} % begin verbatim

\relative c' {
  % Prevent bar numbers at the end of a line and permit them elsewhere
  \override Score.BarNumber #'break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)

  % Increase the size of the bar number by 2
  \override Score.BarNumber #'font-size = #2

  % Draw a box round the following bar number(s)
  \override Score.BarNumber #'stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \repeat unfold 5 { c1 }

  % Draw a circle round the following bar number(s)
  \override Score.BarNumber #'stencil
    = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
  \repeat unfold 4 { c1 } \bar "|."
}

