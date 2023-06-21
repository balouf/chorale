% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm
system-system-spacing = #'((basic-distance . 1.1) (padding . 8))
}
\layout {ragged-last = ##t}

\header {
  title = "Douba / L'inspecteur mène l'enquête (Canon)"
  composer = \markup \column {\right-align {"Words and Music by Rieks Veenker"}
                              \right-align {"French Words by Éric Noyer"}}
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = { \time 4/4
  \tempo \markup {
    Swing
    \hspace #0.4
    \rhythm { 8[ 8] } = \rhythm { \tuplet 3/2 { 4 8 } }
  } 4 = 120
  \key f \major
}



sMusic = {
  \repeat volta 2 {\mark\default d4 r f r d8 f aes g~-> g f d c d4 e f8 g~-> g a~-> a2. r4
  \break \mark\default
  d8 d c4 a8 a f g aes g f d~ d2 a'8 a g g f f e e d4 r r8 a b cis
  \break \mark\default
  d4 r c r bes r a r d1\< a'8\! a g g f f e e
  }\break
  d1\fermata \fine
}


sLyrics = \lyricmode {\emph
  Dou ba dou bi dou wha ba da ba dou ba dou  bi __ wha __
  Dou bi dou wha ba dou bi dou bi dou wha
  chou bi da ba dou bi da ba dou
  bi da ba dou ba dou wha dou 
  chou bi da ba dou bi da ba dou \normal
}

VF = \lyricmode {
  Calme cool je ne vois rien qui soit sus -- pect j'peux con -- ti -- nuer __
  Plan -- quez- vous dans ce coin -là j'ai vu bou -- ger __
  C'est pas le mo -- ment de s'a -- mu -- ser.
  Ap -- pro -- chons nous tout dou -- ce -- ment __
  Al -- lons -y que cha -- cun res -- te calme
}



soprano = \new Staff \with {instrumentName="V."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
  \addlyrics {\VF }
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
