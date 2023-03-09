% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "Barcarolle"
  composer = "Offfenbach"
  tagline = ""

}

conductor_size = 18
individual_size = 20

\include "utils/macros.ly"


specs = { \time 6/8
  \tempo 4. = 60
  \key d \major
}

accords = \chords {
  s2.
}


sMusic = {
  fis4\pp g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 4. 4.
  fis4 g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 2.
  
  a4\< b8 4 cis8 4 d8 4 cis8 \! 4 \> b8 4 a8 4. 4. \!
  a4\< b8 4 cis8 4 d8 4 cis8 \! 4 \> b8 4 a8 4. ~ 4 \! 8\p
  
  4( b8) 4 c8 d2.~ 8 a b c b a b4. 4 8
  4( cis8) 4\cresc d8 e2.~ 8 b cis d\> cis b a4 r8 a,(\p cis) e
  a4.(~ 8 cis) b a4 8 a,( cis) e 
  a4.(~ 8 cis) b a4. r8 8 8 4. r8 8 8 4. r4. r2. 
  
  fis4\mp g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 4. 4.
  fis4 g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 a2. \fz
  r8 e\cresc fis g a b b4. a 
  r8 a b cis d e fis2.~\f 8 e( d) cis(\dim d) b
  a4. 4( b8) cis4.~ 4 8 \bar "||" d4 r8 a(\p d4) 
  a8( e'4~ 4.) d4 r8 a(\pp d4) a8( e'4~ 4.) d4 r8 r4 a8
  4.~ 4 8 4. 4 fis8 4.~ 8 8 8 4. 4 d8 2.~\> 4. 4.
  2.\fermata \! \fine
}

sLyrics = \lyricmode {
Bel -- le nuit, ô nuit __ d'a -- mour,
sou -- ris __ à nos i -- vres -- "ses !"
Nuit plus dou -- ce que __ le jour,
ô bel -- le nuit d'a -- "mour !"

Le temps fuit et sans re -- tour
Em -- por -- te nos ten -- dres -- ses
Loin de cet heu -- reux sé -- jour
Le temps fuit sans re -- tour __

Zé -- phirs __ em -- bra -- sés __
Ver -- sez -- nous vos ca -- res -- ses
Zé -- phirs __ em -- bra -- sés __
Don -- nez nous vos bai -- "sers !"

Ver -- sez vos __ ca -- res -- ses
Don -- nez vos __ bai -- sers_!

É -- cou -- tez, é -- cou -- tez_!

Bel -- le nuit, ô nuit __ d'a -- mour,
sou -- ris __ à nos i -- vres -- ses
Nuit plus dou -- ce que __ le jour,
ô bel -- le nuit d'a -- "mour !"

Sou -- ris à nos i -- vres -- ses
Sou -- ris à nos a -- mours_! __
Ô __ bel -- le nuit, ô __ nuit __ d'a -- mour_!
Ah_! __ A __ dieu_!
Ah_! __ A __ dieu_!

A -- dieu __ gon -- do -- les,
a -- dieu __ bar -- ca -- rol -- les_!
A -- dieu, __ a -- dieu_!

}



soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>

aMusic = {
  fis4\pp g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 4. 4.
  fis4 g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 2.

  fis4\< g8 4 a8 4 b8 4 a8 \! 4 \> g8 4 fis8 4. 4. \!
  fis4\< g8 4 a8 4 b8 4 a8 \! 4 \> g8 4 fis8 4. ~ 4 \! r8
  
  r4. r4 fis8 4( g8) 4 a8 fis4( g8) fis( g) a d,4. 4 r8
  r4. r4 gis8 4( a8) 4 b8 gis8 8 a b e, d cis4 r8 a(\p cis) e
  
  dis4.~-- 4 8 e4 8 a,( cis) e dis4.~-- 4 8 e4. r r2. r r
  \bar "||"
  a,4\mp b8 4 a8 8( g) b8 4 a8 a( g) b8 4 a8 4. 4.
  a4 b8 4 a8 8( g) b8 4 a8 a( g) b8 4 a8 fis'2.\fz
  
  g4. 4 8 fis4. d cis g' fis8 dis e fis g a g4. g
  fis4( e8) cis( d) b a4( g'8) fis4( e8) d4 r8 r4.
  r g fis r r g fis r4 8 4.~ 4 8 4. 4 d8
  4.~ 8 8 8 4. 4 a8 4.(\> b a) g a2.\fermata \! \fine
}

aLyrics = \lyricmode {
Bel -- le nuit, ô nuit __ d'a -- mour,
sou -- ris __ à nos i -- vres -- "ses !"
Nuit plus dou -- ce que __ le jour,
ô bel -- le nuit d'a -- "mour !"

Le temps fuit et sans re -- tour
Em -- por -- te nos ten -- dres -- ses
Loin de cet heu -- reux sé -- jour
Le temps fuit sans re -- tour __

Zé -- phirs __ em -- bra -- sés __
vos ca -- res -- ses
Zé -- phirs __ em -- bra -- sés, 
Don -- nez nous vos bai -- "sers !"

Ver -- sez vos __ ca -- res -- ses
Don -- nez vos __ bai -- sers_!

Bel -- le nuit, ô nuit __ d'a -- mour,
sou -- ris __ à nos i -- vres -- ses
Nuit plus dou -- ce que __ le jour,
ô bel -- le nuit d'a -- "mour !"

Ô nuit plus dou -- ce que __ le jour_!
Sou -- ris __ à nos i -- vres -- ses
nuit, bel -- le nuit __ d'a -- mour_!
A -- dieu_! A -- dieu_! 
A -- dieu __ gon -- do -- les,
a -- dieu __ bar -- ca -- rol -- les_!
A -- dieu, __ a -- dieu_!
}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
>>


bMusic = {
  fis4\pp g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 4. 4.
  fis4 g8 4 fis8 8( e) g8 4 fis8 8( e) g8 4 fis8 2.

  <fis a>4\< <g b>8 4 <a cis>8 4 <b d>8 4 <a cis>8 \! 
  4 \> <g b>8 4 <fis a>8 4. 4. \!
  <fis a>4\< <g b>8 4 <a cis>8 4 <b d>8 4 <a cis>8 \! 
  4 \> <g b>8 4 <fis a>8 4. ~ 4 \! r8
  
  r4. r4 a8\p 4( b8) 4 c8 d4. d,8( e) fis g4. 4 r8
  r4. r4 b8 4( cis8) 4 d8 e4. e,8( fis) gis a4 r8 r4.
  
  fis4.--~\p 4 8 g4 8 r4. fis4.--~ 4 8 g4. r4. r2.
  r4. r8 a8\p 8 4. r8 8 8 4.~ 4 8 4. 4 8 
  4.~ 8 8 8 4. 4. 8 8 8 4 8 4. 4 8 4 8 4 8 c2.\fz
  
  b4. 4 8 a4. fis e a c2.
  b4. 4 8 a4. fis4 g8 a4( b8) a4( g8) \bar "||" fis4 r8 r4.
  r cis' d r r cis d r4 8 4.~ 4 8 4. 4 a8
  a4. ~ 8 8 8 4. 4 fis8 fis4.(\> g fis) e fis2.\fermata \! \fine

}

bLyrics = \lyricmode { 
Bel -- le nuit, ô nuit __ d'a -- mour,
sou -- ris __ à nos i -- vres -- "ses !"
Nuit plus dou -- ce que __ le jour,
ô bel -- le nuit d'a -- "mour !"

Le temps fuit et sans re -- tour
Em -- por -- te nos ten -- dres -- ses
Loin de cet heu -- reux sé -- jour
Le temps fuit sans re -- tour __

Zé -- phirs __ em -- bra -- sés,
vos ca -- res -- ses
Zé -- phirs __ em -- bra -- sés,
vos bai -- "sers !"

Vos __ ca -- res -- ses
Vos __ bai -- "sers !"
É -- cou -- tez, é -- cou -- tez,__ Mes -- da -- mes_! 
Voi -- ci __ les gon -- do -- les
L'heu -- re des bar -- ca -- rol -- les
Et cel -- le des a -- dieux_!

Ô nuit plus dou -- ce que le jour_!
Ô bel -- le nuit, bel -- le nuit __ d'a -- mour_!
A -- dieu_! A -- dieu_! 
A -- dieu __ gon -- do -- les,
a -- dieu __ bar -- ca -- rol -- les_!
A -- dieu, __ a -- dieu_! 

}

hommes = \new Staff \with {instrumentName="H."} {
  \hommes_style
  \specs
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
}


\include "utils/books.ly"
