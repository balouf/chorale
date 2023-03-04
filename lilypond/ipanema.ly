% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "The Girl from Ipanema"
  composer = "A.C. Jobim"
  tagline = ""

}

conductor_size = 15
individual_size = 18

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"



specs = {  \time 4/4
  \tempo 4 = 126
  \key f \major
}

accords = \chords {
  \partial 4 s4
  a1:m7 s8 d2.:9-.11+  s8
  g1:m7 s8 c2.:9-.11+  s8 
  
  \repeat volta 2 {
  f1:maj7 s g:7.13 s
  g:m7 c:7 a2:m7 d:7 g:m7 c:7
  \bar "||"
  f1:maj7 s g:7.13 s
  g:m7 ges:7.11+ f:maj7 s
  \bar "||"
  ges:maj7 s b:9 s
  fis:m9 s d:9 s
  g:m9 s es:9 s
  }
  \alternative {{
  \set Score.voltaSpannerDuration = #(ly:make-moment 12/4)
  a:m7 d:9-.11+
  g:m7 c:9-.11+
  \bar "||"
  f1:maj7 s g:7.13 s
  g:m7 ges:7.11+ f:maj7
s
                }{
\break
a:m7 d:7.5-
  bes:m es:11+
  \bar "||"
  }}
  aes1:maj7 s bes:7.13 s
  bes:m7 a:7.11+ aes:maj7 a:7.11+ aes:maj7 a:7.11+ aes:maj7 s s
  
}



sMusic = {\partial 4 r4
          r1 r1 r1 r1 
          \repeat volta 2 {
          g'4.\mp e8 4 d8 g8~ 4 e8 e~ e e r d g4 e e d8 g~ g g e e~ e e d4
          f d8 d~d d r c e4 c8 c~c c bes4 r c2. r1
          \bar "||"
          g'4(\p a2 c4~ 1) g4( a2 b4~ 1)
          bes4 g2. bes4 ges2 4 r g2. r1
          \bar "||"
f1~\mp \times 2/3 {4 ges f} \times 2/3 {es f es} des4. es8~ 2~ 2 r
gis1~^\markup { \italic { cresc. poco } } \times 2/3 {4 a gis} \times 2/3 {fis gis fis} e4. fis8~ 2~ 2 r
a1~\mf \times 2/3 {4 bes a} \times 2/3 {g a g} f4. g8~ 2~ 2 r4 a8 bes
          }
          \alternative {{
\times 2/3 {c4 c, d} \times 2/3 {e f g} aes2. a4
\times 2/3 {bes bes, c} \times 2/3 {d e f} ges2. r4
\bar "||"
g4.\mp e8 4 d8 c8~\> 2. r8 d\mf g4 e e d8 g~
g g e e~ e e d4
a' f f8 8 d4 c'1~\> 1~\p 2.
r4
                        }{
\times 2/3 {c c, d} \times 2/3 {e f g} aes2. c4
\times 2/3 {des des, es} \times 2/3 {f g aes} a2. r4
          }}
          \bar "||"
\key aes \major
bes4.\mf g8 4 f8 es8~ 2.\> r8\! f-\mf
bes4 g g f8 bes8~ 8 8 g g8~ 8 8 r \breathe f
c'4\< aes4 8 8 f4\! es'2 \breathe r r1 
r2 \times 2/3 {g,4-\p 4 f} g1~ 4 r4 r2 r2 r4 c4~ 1~ 1\> <>\!
\bar "|."
}

sLyrics = \lyricmode {
  Tall and tan and young and love -- ly
  the girl from I -- pa -- ne -- ma goes walk -- ing
  and when she pass -- es each one she pass -- es goes "\"aah!\""
  Oo __ Oo __ each one, each one goes "\"aah!\""
  Oh __ but he watch -- es so sad -- ly, __
  how __ can he tell her he loves her? __
  Yes, __ he would give his heart glad -- ly, __
  but each day, when she walks to the sea
  she looks straight a -- head, not at he.
  Tall and tan and young, 
  the girl from I -- pa -- ne -- ma goes walk -- ing
  and when she pass -- es he smiles __
  
  day, when she walks to the sea 
  she looks straight a -- head, not at he.
  Tall and tan and young,
  the girl from I -- pa -- ne -- ma goes walk -- ing and
  when she pass -- es he smiles.
  She does -- n't see, __
  \emph mm __ \normal
}




soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>

aMusic = {\partial 4 r4 r1 r1 r1 r1
          \repeat volta 2 {
          g8(\mp a4.~ 4) 8 8~ 2. r8 a
          b1~ 4 8 8~ 8 8 4
          bes4 8 8~ 8 8 r8 bes8 4 8 8~ 8 8 4 r4 a2. r1
          \bar "||"
          g'4\mf e e d8 g~ g4 e8 8~ 8 8 d4
          g4 e e d8 g~ g4 e8 8~ 8 8 r d
          f4 d8 8~ 8 8 c4 e c8 8~ 8 8 bes4 r c2. r1
          \bar "||"
          des1~\mp \times 2/3 {4 4 4} \times 2/3 {bes des bes} des4. 8~ 2~ 2 r2
          e1~^\markup { \italic { cresc. poco } } \times 2/3 {4 4 4} \times 2/3 {cis e cis} c4. 8~ 2~ 2 r2
          f1~\mf \times 2/3 {4 4 4} \times 2/3 {d f d} des4. 8~ 2~ 2 r4 a'8 bes
          }
          \alternative {{
          \times 2/3 {c4 c, d} \times 2/3 {e f e} es2. c4
          \times 2/3 {bes bes c} \times 2/3 {d e d} des2. r4
          \bar "||"
          g,8\(\mf a4\) 8 c4 d8 g8~ 4 e8 8~ 8 8 r d b1~ 4 8 8~ 8 8 4
          a'4 f4 8 8 d4 e4. 8 \times 2/3 {4 4 d} e1~\> 2.\p r4
                        }{
          \times 2/3 {c' c, d} \times 2/3 {e f e} e2. c4
          \times 2/3 {des des es} \times 2/3 {des es des} des2. r4
          }}
          \key aes \major
          c4.\mf c8 es4 f8 bes~ bes4 g8 8~ 8 8 r f d1~ 4 8 8~ 8 8 r8 \breathe f
          c'4\< aes4 8 8 f4\! g2 \breathe \times 2/3 {4\p 4 f} g1~ 4 r r2
          r1 r2 \times 2/3 {g4\p 4 f} g2. es4~ 1~ 1\> <>\! \bar "|."
}

aLyrics = \lyricmode {
  Tall __ and young,  the girl __ goes walk -- ing and
  when she pass -- es each one she pass -- es goes "\"aah!\""
  When she walks she's like a Sam -- ba 
  that swings so cool and sways so gent -- ly, that 
  when she pass -- es each one she pass -- es goes "\"aah!\""
  Oh __ but he watch -- es so sad -- ly, __
  how __ can he tell her he loves her? __
  Yes, __ he would give his heart glad -- ly, __
  but each day, when she walks to the sea
  she looks straight a -- head, not at he.
  Tall __ _ and tan and young and love -- ly the girl __ goes walk -- ing and
  when she pass -- es he smiles, but she does -- n't see. __
  day, when she walks to the sea
  she looks straight a -- head, not at he.
  Tall and tan and young and love -- ly the girl __ goes walk -- ing and
  when she pass -- es he smiles. She does -- n't see. __
  She does -- n't see. \emph mm __ \normal
}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
>>


bMusic = {\partial 4 r4 r1 r1 r1 r1 
          \repeat volta 2 {
          g'4.\mp f8 2~ 2. r8 f
          g1~ 4 8 8~ 8 4.~ 2. r8 g
          ges4 8 8~ 8 8 4 r4 g2. r1
          \bar "||"
          a4\mp 4 2~ 2. 4 b2. g8 8~ 1
          4. bes8~ 2 ges4. bes8~ 4 4 r4 a2. r1
          \bar "||"
          bes1~\mp \times 2/3 {4 4 4} \times 2/3 {ges bes bes} a4. 8~ 2~ 2 r2
          gis4\( fis2.~ \times 2/3 {4\) 4 4} \times 2/3 {a4 4 4} 
          a4. 8~ 2~ 2 r2
          a4\( g2.~ \times 2/3 {4\) 4 4} \times 2/3 {bes4 4 4} 
          bes4. 8~ 2~ 2 r4 a8 bes
          }
          \alternative {{
          a1\( c2.\) 4 bes2~ \times 2/3 {4 4 4} 2. r4
          \bar "||"
          g4.\mp f8 2~ 2. r8 f\mf g1~ 4 8 8~ 8 4.
          2. 4 ges2. 4 f\(\> a2.~ 2.\)\p r4
                        }{
          a1\( c2.\) 4 bes2~ \times 2/3 {4 4 aes} g2. r4
          }}
          \key aes \major
          bes4.\mf aes8 2~ 2. r8 aes
          bes1~ 4 8 8~ 8 4. 2. 4 a2 \breathe r2 r1 r1 r1
          r2 \times 2/3 {g4\p 4 f} g1~ 1~ 1\> <>\!
          \bar "|."
}

bLyrics = \lyricmode { 
  Tall and tan, __  the girl __ goes walk -- ing, __
  each one she pass -- es goes "\"aah!\""
  When she walks __ she swings and sways,
  each one, __ each one __ goes "\"aah!\""
  Oh __ but he watch -- es so sad -- ly, __
  how __ _ can he tell her he loves her? __
  Yes, __ _ he would give his heart glad -- ly, __
  but each day __ _ she looks __ not at he.
  Tall and tan, __ the girl __ goes walk -- ing,
  but she does -- n't see. __ _
  day __ _ she looks __ not at he.
  Tall and tan, __ the girl __ goes walk -- ing,
  when he smiles, she does -- n't see. __
                       
}

hommes = \new Staff \with {instrumentName="H."} {
  \hommes_style
  \specs
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
}


\include "utils/books.ly"
