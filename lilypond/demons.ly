% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm
system-system-spacing = #'((basic-distance . 1.1) (padding . 8))
}

\header {
  title = "Démons et Merveilles"
  composer = "Prévert & Thiriet"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = { \time 6/8
  \tempo 4. = 74
  \key d \major
}

accords = \chords {
  \partial 4 s4

}



sMusic = {\partial 8 d8 b' a  g a4. a~ a8 r d,
          b'( a) g d'4.~ 4.~ 8 r b
          b4. g8 a b a4. a8 g a b4. r4 d,8
          b' a g a4.~ a e r8 d d b'a g
          
          a b c d4. r8 b c a a g a4.~ 8 e e g a b g4.~ 
          8 r e  ^\markup {\italic Poco cresc.} e fis g a2. 8 r4 
          fis8\< g a b2.~ 8\! r4 a4. d cis8 8 d b4. 8 a cis b2.\>~ 4.~ 8\! r4
          
          e,4. \p ^\markup {\italic misterioso} \times 3/2 {8 d8}
          e4. \times 3/2 {d8 fis8} e2. g4. 8 g a b4. g
          a a b2.~ 8 r8 g ^\markup {\italic Cresc.}
          e fis g a2. 8 r4 fis8\< g8 a8 b2.~\f\>  2. 
          e4. \! ^\markup {\italic Dolcissimo} 8 d8 cis8 
          b4. g e2. g4. f4. e2.
          \bar "|."
}


sLyrics = \lyricmode { Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée
                       Et toi Comme une al __ gue
                       dou -- ce -- ment ca -- res
                       
                       -- sées par le vent
                       Dans les sa -- bles du lit __
                       tu re -- mues en rê -- vant __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée __
                       
                       Mais dans tes yeux entr' ou -- verts
                       Deux pe -- ti -- tes va -- gues sont res -- tées __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Deux pe -- ti -- tes va -- gues pour me no -- yer.
                       
}



soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>

aMusic = {\partial 8 d8 g g fis e4. 4.~ 8 r d g4 8 fis4.~ 4.~ 8 r d g4. d8 e fis e4. e8 8 g g4. r4
          d8 g g fis e4.~ e c d4 8 g g fis

          e fis g a4. g4 8 e e g fis4. e4 8 d g fis e4.~ 
          8 r b^\markup {\italic Poco cresc.} c d fis e2. 8 r4 
          e8\< e g fis2.~ 8\! r4 fis4. fis a8 g fis g4. 8 fis e dis2.\>~ 4.~ 8\! r4

          b4. \p ^\markup {\italic misterioso} \times 3/2 {8 8} 
          c4. \times 3/2 {d8 c8} b2. e4. 8 e e g4. fis
          e e dis~ dis4 r8 
          e4. ^\markup {\italic Cresc.} b8 c d 
          e2. fis8 r4 e8\< 8 g8 fis2.~\f\> 2. 
          g4.\! ^\markup {\italic Dolcissimo} b8 a8 fis8 
          g4. e b2. c4. 4. b2.
          \bar "|."
}

aLyrics = \lyricmode { Dé -- mons et mer -- veil -- les __ 
                       Vents et  ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée
                       Et toi Comme une al __ gue
                       dou -- ce -- ment ca -- res

                       -- sées par le vent
                       Dans les sa -- bles du lit 
                       tu re -- mues en rê -- vant __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée __

                      Mais dans tes yeux entr' ou -- verts
                       Deux pe -- ti -- tes va -- gues sont res -- tées __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Deux pe -- ti -- tes va -- gues pour me no -- yer.
}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
>>


tMusic = {\partial 8 d'8 d c b c4. 4.~ 8 r d d4 b8 4.~ 4.~ 8 r d d4. b8 a g g4. a8 b e d4.
          r4 d8 d c b c4.~ 4. a b4 8 d c b

          c d e c4. b4 8 c c e d4. g,4 a8 b c d b4.~ 
          8 r g^\markup {\italic Poco cresc.} g a b g2. 8 r4 
          a8\< b c d2.~ 8\! r4 cis4. d fis8 e d d4. 8 b a fis2.\>~ 4.~ 8\! r4

          g4. \p ^\markup {\italic misterioso} \times 3/2 {8 8} 
          e4. \times 3/2 {8 8} g2. 4. a8 b c d4. d
          g, g fis~ fis4 r8 
          g4. ^\markup {\italic Cresc.} 8 a b 
          c2. a8 r4 a8\< 8 e'8 dis2.~\f\> 2. 
          e4.\! ^\markup {\italic Dolcissimo} cis8 8 d8 
          e4. b g2. f4. a4. gis2.
          \bar "|."
}

tLyrics = \lyricmode { Dé -- mons et mer -- veil -- les __ 
                       Vents et  ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée
                       Et toi Comme une al __ gue
                       dou -- ce -- ment ca -- res

                       -- sées par le vent
                       Dans les sa -- bles du lit 
                       tu re -- mues en rê -- vant __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée __

                       Mais dans tes yeux entr' ou -- verts
                       Deux pe -- ti -- tes va -- gues sont res -- tées __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Deux pe -- ti -- tes va -- gues pour me no -- yer.
}

tenor = \new Staff \with {instrumentName="T."} <<
  \tenor_style
  \specs
  \relative c' {\tMusic }
  \addlyrics { \tLyrics}
>>

bMusic = {\partial 8 d8 g g g g4. g~ g8 r g
          g( fis) e b4.~ 4.~ 8 r b
          e4. e8 e d c4. c8 c c g'4. r4 g8
          g g g g4.~ g g g4 8 8 8 8

          g g g fis4. e4 8 a a a d,4. c4 8 e e e e4. 
          d^\markup {\italic Poco cresc.} d8 d d c2. 8 r4 
          c8\< c c b2.~ 8\! r4 fis'4. b, b8 b b g4. 8 g fis b2.\>~ 4.~ 8\! r4
          
          e4. \p ^\markup {\italic misterioso} \times 3/2 {8 8} 
          a,4. \times 3/2 {8 8} e'2. c4. 8 b a g4. b
          c c b~ b4 r8 e4. ^\markup {\italic Cresc.} d8 c b 
          a2. d8 r4 c8\< 8 8 b2.~\f\> 2. 
          b'4.\! ^\markup {\italic Dolcissimo} a8 8 8 
          e4. e d2. 4. 4. e2.
          \bar "|."
}


bLyrics = \lyricmode { Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée
                       Et toi Comme une al __ gue
                       dou -- ce -- ment ca -- res
                       
                       -- sées par le vent
                       Dans les sa -- bles du lit 
                       tu re -- mues en rê -- vant __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Au loin dé -- jà la mer s'est re -- ti -- rée __
                       
                       Mais dans tes yeux entr' ou -- verts
                       Deux pe -- ti -- tes va -- gues sont res -- tées __
                       Dé -- mons et mer -- veil -- les __ 
                       Vents et __ ma -- rées  __
                       Deux pe -- ti -- tes va -- gues pour me no -- yer.
                       
}


basse = \new Staff \with {instrumentName="B."} <<
  \hommes_style
  \specs
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
>>


\include "utils/booksq.ly"
