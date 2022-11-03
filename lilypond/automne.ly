% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "Les feuilles mortes"
  composer = "Joseph Kosma"
  tagline = ""

}

conductor_size = 16
individual_size = 20


accords = \chords {
  f4.:m f:m/es g:7/d c:7
  g2.:m7/bes c4. f:m
  a2.:m7.5- s4.  bes:m
  g2.:m7/bes g4.:7 c

  f:m f:m7/es f:m7/d c
  g2.:m7.5-/bes f:m
  a:m7.5- s4. bes:m
  g:m7/d s g:7 c:7
  f:m s g:7 c:7
  f:m es:9 aes s
  es2.:m7.5- aes des:7 c
  \time 4/4
  f2:m bes:m es:7 aes
  des g:m7 c f:m
  f:m7/a bes:m es:7 aes
  des g:m7 c f:m
  e:m7.5-/g c 
  s4 d8:m7.5- c:7 f2:m
  s8 f8:m/c bes4 es2:7
  s2 aes1
  g:m7.5- f:m/aes
  bes2:m/des g4:/b c:6 f2:m s
}


emph = {
  \override Lyrics.LyricText.font-shape = #'italic
  % \override Lyrics.LyricText.font-series = #'bold
}

normal = {
  \revert Lyrics.LyricText.font-shape
  % \revert Lyrics.LyricText.font-series
}


sMusic = {
  f8 g aes f g aes f aes f g4.
  g8 aes bes g aes bes g bes aes c4.
  c8 des es c des es c es des bes4.
  bes2.( b4. c) 
  
  r2. r
  des2.( c)
  c8 es des c es des c es des bes4.
  g8 bes aes g bes aes g aes f g4 8 
  f g aes c aes g f4. g 
  f8 g aes f'16\fermata f\fermata es8 des c4.~ 4
  8 des bes aes g aes bes c4. 4 8 
  ces4 aes8 aes g f g2.
  \time 4/4
  r8 f g aes des2
  r8 es, f g c4 c
  r8 des, es f bes2
  r8 c, d e aes2
  r8 f g aes des2
  r8 es, f g c4 c
  r8 des, es f bes2
  r8 g bes aes f2~ 4
  e8 f g8. c,16 g'4~ 4
  f8 g aes4 aes4~ 8
  aes g aes bes2~ 8
  es, es'8.\fermata des16\fermata c2~ 
  \time 2/4
  4 b8 c
  \time 4/4
  des8. 16 bes8 8 g4 des'
  c2 4 f, bes bes8 aes g4 <c e,>8 <bes g> <aes f>2 r^"D.C." \bar "|."
}

sLyrics = \lyricmode {
  Oh! je vou -- drais tant que tu te sou -- vienn's
  des jours heu -- reux où nous vi -- vions a -- "mis ;"
  En ce temps là la vie é -- tait plus bell'
  "Oh !" __ 
  
  "Oh !" __ 
  Les feuil -- les mort's se ra -- mass'nt à la pell'
  Les sou -- ve -- nirs et les re -- grets aus -- si.
  
  Et le vent du nord les em -- por -- te
  dans la nuit froi -- de de l'ou -- "bli ;" __
  Tu vois, je n'ai pas ou -- bli -- é
  la chan -- son que tu me chan -- tais.

  C'est un' chan -- son qui nous res -- sem -- ble.
  Toi tu m'ai -- mais Et je t'ai -- mais,
  Et nous vi -- vions tous deux en -- sem -- ble,
  Toi qui m'ai -- mais, moi qui t'ai -- mais. __
  
  Mais la vie sé -- par' __ ceux qui s'ai -- ment __
  tout dou -- ce -- ment __ sans fair' de bruit, __
  Et la mer ef -- fa -- ce sur le sa -- ble
  les pas des a -- mants dé -- su -- nis.

}

sLyrics_b = \lyricmode { \emph
Les feuil -- les mort's se ra -- mass'nt à la pell',
Les sou -- ve -- nirs et les re -- grets aus -- si,
Mais mon a -- mour si -- len -- cieux et fi -- dèle
  "Oh !" __ 


  "Oh !" __ 
En ce temps là la vie é -- tait plus bell'
et le so -- leil plus brû -- lant qu'au -- jour -- d'hui.

Tu é -- tais ma plus douce a -- mi -- e
je n'ai que fai -- re des re -- "grets ;" __
et la chan -- son que tu chan -- tais tou -- jours,
tou -- jours, je l'en -- ten -- drai.
\normal
}


soprano = \new Staff \with {instrumentName="S."} <<
  \time 6/8
  \tempo 4. = 66
  \set Staff.midiInstrument = "choir aahs"
  \key f \minor
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
  \addlyrics {\sLyrics_b }
>>

aMusic = {
 f8 g aes f g aes f aes f g4.
 g8 aes bes g aes bes g e f aes4.
 <es ges>2.~ 4. <des f>
 g8 bes aes g bes aes g aes f g4.
 
 r2. r4. r4 g8
 g aes bes g aes b c2.
 <es ges>8 8 8  8 8 8  8 8 8 <des f>4.
 r2. r r4. aes8 f es d d d e4 8 
 f g aes des16\fermata des\fermata c8 bes aes4.~ 4 r8
 r2. r4. aes4 8 f4 8 f g f e2.
 
 \time 4/4
 r2 f8 4 aes8 g2
 es4 8 g f f4. des8 4 f8
 e2 c8 es4 des8 c2 f8 4 aes8 
 g2 es4 8 g f8 4. d8 4 f8
 e e g c, f2~ 4 e8 f e8. 16 4~ 4
 d8 c8 4 4~ 8 f e f g2~  8 g g8.\fermata bes16\fermata
 aes2~
 \time 2/4
 4 b8 c
 \time 4/4
 bes8. 16 g8 8 fes4 4
 aes2 4 f bes bes8 aes g4 aes8 c, f2 r^"D.C." \bar "|."
 }

aLyrics = \lyricmode {
   Oh! je vou -- drais tant que tu te sou -- vienn's
  des jours heu -- reux où nous vi -- vions a -- "mis ;"
  Oh! __ _
  et le so -- leil plus brû -- lant qu'au -- jour -- d'hui.
  
  Tu vois, je n'ai pas ou -- bli -- é...
  Les feuil -- les mort's se ra -- mass'nt à la pell'
  
  Le vent du nord les em -- por -- te
  dans la nuit froi -- de de l'ou -- "bli ;" __

  la chan -- son que tu me chan -- tais.
  
    C'est un' chan -- son qui nous res -- sem -- ble.
  Toi tu m'ai -- mais Et je t'ai -- mais,
  Et nous vi -- vions tous deux en -- sem -- ble,
  Toi qui m'ai -- mais, moi qui t'ai -- mais. __
  
  Mais la vie sé -- par' __ ceux qui s'ai -- ment __
  tout dou -- ce -- ment __ sans fair' de bruit, __
  Et la mer ef -- fa -- ce sur le sa -- ble
  les pas des a -- mants dé -- su -- nis.

}

aLyrics_b = \lyricmode { \emph
Les feuil -- les mort's se ra -- mass'nt à la pell',
Les sou -- ve -- nirs et les re -- grets aus -- si,
Oh! __ _
sou -- rit tou -- jours et re -- mer -- cie la vie.

Com -- ment "veux-" tu que je t'ou -- "blie ?"
En ce temps là la vie é -- tait plus bell'
Tu é -- tais ma plus douce a -- mie
je n'ai que fai -- re des re -- "grets ;" __
tou -- jours, tou -- jours, je l'en -- ten -- drai.
\normal
}


alto = \new Staff \with {instrumentName="A."} <<
  \time 6/8
  \tempo 4. = 66
  \set Staff.midiInstrument = "synth voice"
  \key f \minor
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
  \addlyrics {\aLyrics_b }
>>


bMusic = {r2. r r r
a'8 bes c a bes c a a a bes4.
g2.( f4. e)

f8 g aes f g aes f aes f g4 r8
bes2.( aes)
a8 c bes a c bes a a a bes4.
r2. r4. r4 g8 f f f f aes c b4. c 
aes8 bes c bes16\fermata bes\fermata g8 g aes4.~ 4 c8
des bes aes g aes bes c4. aes4 8 des4 8 8 8 8 c2.
\time 4/4
r8 f, g aes bes4 des, es4. bes'8 aes4 4
r8 f g aes g4 bes, c4. g'8 f2
r8 aes bes c bes4 des, es4. bes'8 aes4 4
r8 f g aes g4 bes, c4. g'8 aes2~ 4
g8 des c8. 16 4~ 4 d8 e f4 4~ 8 
c bes d es2~ 4 4\fermata aes2~
\time 2/4 4 r \time 4/4
r g8 des bes des bes' g aes2 f4 4
des4 8 c b4 c8 e f2 r^"D.C." \bar "|."
}

bLyrics = \lyricmode {
En ce temps là la vie é -- tait plus bell'
"Oh !" __

Les feuil -- les mort's se ra -- massn't à la pell'

"Oh !" __ 
Les feuil -- les mort's se ra -- mass'nt à la pell'

  Et le vent du nord les em -- por -- te
  dans la nuit froi -- de de l'ou -- "bli ;" __
  Tu vois, je n'ai pas ou -- bli -- é
  la chan -- son que tu me chan -- tais.
  
}

bLyrics_b = \lyricmode {\emph
Mais mon a -- mour si -- len -- cieux et fi -- dèle
"Oh !" __
Je t'ai -- mais tant, tu é -- tait si jo -- lie

  "Oh !" __ 
En ce temps là la vie é -- tait plus bell'

Tu é -- tais ma plus douce a -- mi -- e
je n'ai que fai -- re des re -- "grets ;" __
et la chan -- son que tu chan -- tais tou -- jours,
tou -- jours, je l'en -- ten -- drai.

  C'est un' chan -- son qui nous res -- sem -- ble.
  Toi tu m'ai -- mais Et je t'ai -- mais,
  Et nous vi -- vions tous deux en -- sem -- ble,
  Toi qui m'ai -- mais, moi qui t'ai -- mais. __
  
  Mais la vie sé -- par' __ ceux qui s'ai -- ment __
  tout dou -- ce -- ment __ sans bruit, __
  Et s'ef -- fa -- cent sur le sa -- ble
  les pas des a -- mants dé -- su -- nis.

\normal}


hommes = \new Staff \with {instrumentName="H."} {
  \time 6/8
  \tempo 4. = 66
  \set Staff.midiInstrument = "voice oohs"
  \key f \minor
  \clef bass
  \accidentalStyle modern-cautionary
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
  \addlyrics { \bLyrics_b}
}


\include "utils/books.ly"
