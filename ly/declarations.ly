
  
breve = \duration { -1 0 }
longa = \duration { -2 0 }

\include "nederlands.ly"		% dutch
\include "chord-modifiers.ly"
\include "script.ly"


Gourlay = 1.0
Wordwrap = 0.0

papersize = "a4"

\include "paper20.ly"

\paper{
	\paper_twenty
}

% ugh
\include "midi.ly"

% declarations for standard directions
left = -1
right = 1
up = 1
down = -1
start = -1
stop = 1
smaller = -1
bigger = 1

center=0

break = { \penalty = 10000; }
nobreak = { \penalty = -10000; }

major = 0
minor = 3
\include "dynamic.ly"

\include "property.ly"



unusedEntry = \notes { c4 }		% reset default duration

% music = "\melodic\relative c"

