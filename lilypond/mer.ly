% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "La Mer"
  composer = "Charles Trénet"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = { \time 4/4
  \tempo 4 = 120
  \key f \major
}

accords = \chords {
  \partial 4 s4

}



sMusic = {\partial 4 c4 f1~ 2 \tuplet 3/2 {e4 f g} a2
r4 f g2 \tuplet 3/2 {e4 d c} a'1~ 4 r 
\tuplet 3/2 {g a bes} c4. f,8 4 4 d'1~ 4 
4 \tuplet 3/2 {c a g} f2 d4 f

g1 c,2 r4 c f1~ 2 \tuplet 3/2 {e4 f g} a2 r4
f g2 \tuplet 3/2 { e4 d c } a'1~ 4 r
\tuplet 3/2 { g a bes } c4. f,8 4 4
d'1~ 4 d \tuplet 3/2 { c\( a\) g } f2
d4 f g1 f2 r4 e
\key a \major
a1~ 2 \tuplet 3/2 { gis4 a b } cis 2. a4
b2 \tuplet 3/2 { gis4 fis e } e2 r r r4 g
\key c \major
c1~ 2 \tuplet 3/2 { b4 c d } e2. c4
d2 \tuplet 3/2 { b4 a g } c2 r r r4 c,
\key f \major
f1~ 2 \tuplet 3/2 { e4 f g } a2
r4 f g2 \tuplet 3/2 { e4 d c } a'1~ 4 
r4 \tuplet 3/2 { g a bes } c4. f,8 4 4
d'1~ 4 4 \tuplet 3/2 { c a g } f2
d4 f g2\( bes d e <e f>1~\) <e f>2 r \bar "|."
}

sLyrics = \lyricmode {
La mer, __ qu'on voit dan -- ser
le long des gol -- fes clairs, __
a des re -- flets d'ar -- gent,
la mer, __ des re -- flets chan -- geants sous la plui __ e.

La mer, au ciel d'é -- té con -- fond, ses blancs mou -- tons __
a -- vec les anges si purs, la mer, __ ber -- gè -- re d'a -- zur,
in -- fi -- ni __ e. Vo -- yez, __
près des é -- tangs, ces grand ro -- seaux mouil -- lés,
Vo -- yez, __ ces oi -- seaux blancs et ces mai -- sons rouil -- lées.

La mer __ les a ber -- cés
le long des gol -- fes clairs,__
et d'une chan -- son d'a -- mour, 
la mer__ a ber -- cé mon coeur
pour la vi __ _ _ _ e. __
}



soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>

aMusic = {\partial 4 r4 r2 a bes \tuplet 3/2 {c4 c c} 2
r4 d4 2 r \tuplet 3/2 {r4 a b} \tuplet 3/2 {cis d e} f r 
\tuplet 3/2 {e f g} f4. es8 c4 es d2
\tuplet 3/2 {fis4( g a)} bes bes \tuplet 3/2 {g e e}
d2 4 c
b1 c2 r r a bes \tuplet 3/2 { c4 4 4 } 2 r4 d d2 r
\tuplet 3/2 { r4 a b } \tuplet 3/2 { cis d e } 
f r \tuplet 3/2 { e f g } f4. es8 c4 es
d2 \tuplet 3/2 { fis4( g a) } bes bes
\tuplet 3/2 { g\( e\) e} d2 d4 c b2( bes) a r
\key a \major
r2 cis fis \tuplet 3/2 { e4 dis d } cis2. 4
d2 \tuplet 3/2 { e4 dis d } cis2 r r1
\key c \major
r2 e a \tuplet 3/2 { g4 fis f } e2. 4
f2 \tuplet 3/2 { g4 fis f } e2 r r1 
\key f \major
r2 a, bes \tuplet 3/2 { c4 4 4 } 2
r4 d d2 r \tuplet 3/2 { r4 a b } \tuplet 3/2 { cis d e }
f r \tuplet 3/2 { e f g } f4. es8 c4 es 
d2 \tuplet 3/2 { fis4( g a) } bes bes \tuplet 3/2 { g e e }
d2 d4 c bes2\( d g bes a1~\) 2 r \bar "|."
}

aLyrics = \lyricmode {
  La mer, qu'on voit dan -- ser
  le long le long des gol -- fes clairs,
  a des re -- flets d'ar -- gent, la mer,
  la __ mer, des re -- flets chan -- geants sous la
  plui __ e
  
  La mer, au ciel d'é -- té, con -- fond
  con -- fond ses blancs mou -- tons
  a -- vec les anges si purs, la mer, la __ mer,
  ber -- gè -- re d'a -- zur, in -- fi -- ni __ e
  
  Vo -- yez, près des é -- tangs, ces grands ro -- seaux mouil -- lés,
  Vo -- yez, ces oi -- seaux blancs et ces mai -- sons rouil -- lées.
  
  La mer les a ber -- cés le long
  le long des gol -- fes clairs,
  et d'une chan -- son d'a -- mour, la mer, la __ mer
  a ber -- cé mon coeur pour la vi __ _ _ _ e. __

}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
>>


bMusic = {c4 f2 d g \tuplet 3/2 {c,4 d e} f2 r4 a
bes2 \tuplet 3/2 {c4 bes g} f2( e d4) r
\tuplet 3/2 {e c' bes} a4. 8 4 4
bes2 a g4 f \tuplet 3/2 {e c cis} d2 f4 a   
g2( f) e r4 c f2 d g \tuplet 3/2 { c,4 d e }
f2 r4 a bes2 \tuplet 3/2 { c4 bes g } f2( e d4) r
\tuplet 3/2 { e c' bes } a4. 8 4 4 bes2( a g4)
f \tuplet 3/2 { e\( c\) cis } d2 f4 a g2( c,) f r
\key a \major
r fis d \tuplet 3/2 { e4 fis gis } a2. fis4
b2 \tuplet 3/2 { b4 a gis } a \breathe a \tuplet 3/2 { gis a gis }
\tuplet 3/2 { fis gis fis } e r
\key c \major
r2 a f \tuplet 3/2 { g4 a b } c2. a4
d2 \tuplet 3/2 { d4 c b }
c \breathe c \tuplet 3/2 { bes c bes } \tuplet 3/2 { a bes a } g c,
\key f \major
f( e)-> d( f)-> g2 \tuplet 3/2 { c,4 d e } f2
r4 a bes2 \tuplet 3/2 { c4 bes g } f2( e d4) r
\tuplet 3/2 { e4 c' bes } a4. 8 4 4 bes2 a
g4 f \tuplet 3/2 { e c cis }
d2 f4 a g1~( 2 ges) f1~ 2 r \bar "|."
}

bLyrics = \lyricmode { La mer, la mer, qu'on voit dan -- ser
                       le long des gol -- fes clairs __ 
                       a des re -- flets d'ar -- gent, la mer,
                       la mer, des re -- flets chan -- geants sous la
                       
plui __ e La mer, la mer, au ciel d'é -- té,
con -- fond ses blancs mou -- tons __
a -- vec les anges si purs, la mer, __
ber -- gè -- re d'a -- zur, in -- fi -- ni __ e

Vo -- yez, près des é -- tangs, 
ces grands ro -- seaux mouil -- lés, 
Vo -- yez ces grands ro -- seaux mouil -- lés, 
Vo -- yez ces oi -- seaux blancs et ces mai -- sons rouil -- lées,
ces oi -- seaux, ces mai -- sons rouil -- lées. 
La mer, __ la __ mer les a ber -- cés
le long des gol -- fes clairs, __
et d'une chan -- son d'a -- mour, la mer,
la mer a ber -- cé mon coeur pour la vi __ e. __
}

hommes = \new Staff \with {instrumentName="H."} {
  \hommes_style
  \specs
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
}


\include "utils/books.ly"
