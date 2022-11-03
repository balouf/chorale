% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "La Ballade Nord-Irlandaise"
  composer = "Renaud"
  tagline = ""

}

conductor_size = 15
individual_size = 20


accords = \chords {
  s1
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4/e d2:m bes f bes f1
  \bar "||"
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4/e d2.:m bes4 f2 bes f1
  \bar "||"
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4 d2.:m bes4 f2 bes f1
  \bar "||"
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4 d2.:m bes4 f2 bes f1
  \bar "||"
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4 d2.:m bes4 f2 bes f1
  \bar "||"
  f2. bes4 f1 d2.:m bes4 c1
  f2. c4 d2.:m bes4 f2 bes f1

}


introMusic = {
  r2 r8 c16 c f8. g16 a2~ a8 g f8. d16 c2 r8 f16 e f8 e
  f2~ f8 g16 a bes8. a16 g2 r8 g a bes c4 c~ c8 bes16 a g8. f16
  a2 r8 g f8. d16 c4 c
}

introLyrics = \lyricmode { "J'ai" vou -- lu plan -- ter __ un o -- ran ger
                           Là où la chan -- son __ "n'en" ver -- ra ja -- mais Là où les ar -- bres __
                           "n'ont" ja -- mais don -- né que des gre -- na -- des }

outroMusic = {
  r8 c f8. g16 a2~ a8 g f8. d16 c2 r8 f4 e8
  f2~ f8 g16 a bes8. a16 g2 r8 g a bes c4 c~ c8 bes16 a g8. f16
  a2 r8 g f8. d16 c2 r8 f f8. g16 f2 r \bar"|."
}

outroLyrics = \lyricmode {B.F. __ _ _ _ "..."}


sMusic = {r8 f f8. g16 f1
          \bar "||"
          f2. bes4 a2. c4 d2. d4 e2. f8 e
          f2. c4 d2. d4 a2 bes a r8 c, f8. g16
          \bar "||"
          a4 a~ a8 g f8. d16 c2 r8 f f e f4 f~ f8 g16 a bes8. a16 g2
          r8 g a bes c4 c~ c8 bes16( a) g8. f16 a2
          r8 g f8. d16 c4 c r8 f16 f f8. g16 f2 r
          \bar "||"
          f2. bes4 a2. c4 d2. d4 e2
          r8 g, a bes c4 c~ c8 bes16( a) g8. f16 a2
          r8 f f8. d16 c2 r8 f8 f8. g16 f2

          r8 c16 c f8. g16
          \bar "||"
          a2~ a8 g f8. d16 c2
          r8 f16 f f8 e f2~ f8 g16 a bes8. a16 g2
          r8 g a bes c2~ c8 bes16 a g8. f16 a2
          r8 g f8. d16 c2 r8 f16 f f8. g16 f2
}

sLyrics = \lyricmode { dé -- gou -- pil -- lées
                       O __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

                       Bu -- vons un ver -- re, __ al -- ons pê -- cher,
                       Pas u -- ne guer -- re __ ne pour -- ra du -- rer
                       Lors -- que la biè -- re __ et __ "l'a" -- mi -- tié
                       Et la mu -- si -- que nous fe -- ront chan -- ter

                       O __ _ _ _ _ _ _
                       Ce sont les hom -- mes, __ pas __ les cu -- rés,
                       qui font pous -- ser les o -- ran -- gers.

                       Je vou -- lais plan -- ter __ un o -- ran -- ger
                       Là où la chan -- son __ "n'en" ver -- ra ja -- mais
                       Il a fleu -- ri __ et il a don -- né
                       Les fruits su -- crés de la li -- ber -- té.
}



soprano = \new Staff \with {instrumentName="S."} <<
  \time 4/4
  \tempo 4 = 66
  \set Staff.midiInstrument = "choir aahs"
  \key f \major
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' {\introMusic \sMusic \outroMusic}
  \addlyrics {\introLyrics \sLyrics \outroLyrics}
>>

aMusic = {r8 f f8. g16 f1
          f2. d4 f2. a8 g a2. bes4 c1
          a2. e4 f2. d4 f2 d f r8 c f8. g16

          f4 f~ f8 e d8. bes16 a2 r8 c c c d4 d~ d8 d16 d d8. d16 e2
          r8 g a bes a4 a~ a8 g16( f) e8. d16 f2
          r8 bes bes8. bes16 a4 a8 f d4 d8. e16 f2

          r8 c f8. g16 a2~ a8 g f8. d16 c2
          r8 f16 f f8 e f2~ f8 g16 a bes8. a16 g2 r
          a2. e4 f2. d4 f2 d f2

          r8 c16 c f8. g16
          f2~ f8 e d8. bes16 a2
          r8 c16 c c8 c d2~ d8 d16 d d8. d16 e2 r
          f8 f4 g8 f4 c d8 d4 e8 d2
          f8 g4 a8 bes bes16 bes bes8. bes16 a2
}

aLyrics = \lyricmode { dé -- gou -- pil -- lées
                       O __ _ _ _ _ _ _ _ _ _ _ _ _ _ _

                       Bu -- vons un ver -- re, __ al -- ons pê -- cher,
                       Pas u -- ne guer -- re __ ne pour -- ra du -- rer
                       Lors -- que la biè -- re __ et __ "l'a" -- mi -- tié
                       Et la mu -- si -- que nous fe -- ront chan -- ter

                       Tu -- ez vos dieux __ à tout ja -- mais,
                       Sou au -- cu -- ne croix __ "l'a" -- mour ne se plaît,
                       O __ _ _ _ _ _ _

                       Je vou -- lais plan -- ter __ un o -- ran -- ger
                       Là où la chan -- son __ "n'en" ver -- ra ja -- mais
                       Il a fleu -- ri __ et il a don -- né
                       Les fruits su -- crés de la li -- ber -- té.

}


alto = \new Staff \with {instrumentName="A."} <<
  \time 4/4
  \tempo 4 = 66
  \set Staff.midiInstrument = "synth voice"
  \key f \major
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' {\introMusic \aMusic \transpose c c' {\outroMusic}}
  \addlyrics {\introLyrics \aLyrics \outroLyrics}
>>


bMusic = {r8 f f8. g16 f2 r8 c f8. g16 a2~ a8 g f8. d16 c2 r8 f f e
          f2~ f8 g16( a) bes8. a16 g2 r8 g a bes
          c4 c~ c8 bes16( a) g8. f16 a2 r8 g f8. d16 c2 r8 f f8. g16 f2 r

          f8 f4 g8 f4 f f8 f4 g8 a2
          d,8 f4 e8 d4 bes c16 c c4 d8 e2
          f8 f4 f8 f4 c d8 d4 e8 d2
          f8 g4 a8 bes bes16 bes bes8. bes16 a2 r

          f8 f4 g8 f2 f8 f4 g8 a2
          d,8 f4 e8 d4 bes c16 c c4 d8 e2
          f8 f4 f8 f4 c d8 d4 d8 d2
          a'8 f4 a8 bes bes bes8. bes16 a2 r

          f1~ f d2. bes4 c2
          r8 g' a bes a2~ a8 g16 f e8. d16 f2
          r8 bes bes8. bes16 a4. f8 d4 d8. e16 f2
}

bLyrics = \lyricmode { dé -- gou -- pil -- lées
                       Jus -- "qu'à" Der -- ry __ ma bien ai -- mée
                       Sur mon ba -- teau __ "j'ai" na -- vi -- gué
                       "J'ai" dit aux hom -- mes __ qui -- se bat -- taient
                       Je viens plan -- ter un o -- ran -- ger

                       Bu -- vons un ver -- re, __ al -- ons pê -- cher,
                       Pas u -- ne guer -- re __ ne pour -- ra du -- rer
                       Lors -- que la biè -- re __ et __ "l'a" -- mi -- tié
                       Et la mu -- sique nous fe -- ront chan -- ter

                       Tu -- ez vos dieux à tout ja -- mais
                       Sou au -- cu -- ne croix __ "l'a" -- mour ne se plaît,
                       Ce sont les hom -- mes, __ pas __ les cu -- rés,
                       qui font pous -- ser les o -- ran -- gers.

                       O __ _ _ _
                       Il a fleu -- ri et il a don -- né
                       Les fruits su -- crés de la li -- ber -- té.


}

hommes = \new Staff \with {instrumentName="H."} {
  \time 4/4
  \tempo 4 = 66
  \set Staff.midiInstrument = "voice oohs"
  \key f \major
  \clef bass
  \accidentalStyle modern-cautionary
  \relative c {\introMusic \bMusic \outroMusic}
  \addlyrics {\introLyrics \bLyrics \outroLyrics}
}


\include "utils/books.ly"
