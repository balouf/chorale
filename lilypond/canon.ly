% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm
system-system-spacing = #'((basic-distance . 1.1) (padding . 8))
}

\header {
  title = "Canon Jazz"
  composer = "(en canon de quatre mesures)"
  tagline = ""

}

conductor_size = 20
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = { \time 4/4
  \tempo 4 = 120
  \key f \major
}



sMusic = {
  \repeat volta 2 {d4 r f r d8 f aes g~-> g f d c d4 e f8 g~-> g a~-> a2. r4
  \break
  d8 d c c a a f g aes g f d~ d2 a'8 a g g f f e e d4 r r8 a b cis
  \break
  d4 r c r bes r a r d1\< a'8\! a g g f f e e
  }
}


sLyrics = \lyricmode {
  du ba chi bi du ba __ ba da ba da ba da ba __ du __
  chu bi da ba chu bi da ba chu bi du ba __ chu bi da ba chu bi da ba du ba da ba
  du ba du ba du __ chu bi da ba chu bi da ba
}


soprano = \new Staff \with {instrumentName="V."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>


#(set-global-staff-size conductor_size)
\book {
  \bookOutputSuffix "-tutti"
  \header{
    instrument = "Tutti"
  }
  \score {
    \new ChoirStaff
    <<
      \soprano
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \soprano
    >>
    \midi {}
  }
}
