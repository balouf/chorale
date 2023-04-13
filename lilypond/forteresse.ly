% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm}

\header {
  title = "Forteresse"
  composer = "Michel Fugain"
  tagline = ""

}

conductor_size = 16
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = {  \time 3/4
  \tempo 4 = 66
  \key d \minor
    \set Timing.beamExceptions = #'()
    \set Timing.baseMoment = #(ly:make-moment 1/4)
    \set Timing.beatStructure = 1,1,1

}


accords = \transpose c d {\chords {
  c2.:m g:7 c2.:m g:7 f:m fis:m7.5- c4:m/g g2:7
  c2.:m g:7 c:7 f:m f:m7 fis:m7.5- c:m/g g:7 c:m g:7
  c:7 f:m f:m7 fis:m7.5- c2:m/g g4:7 c2.:m
  \break
  \repeat volta 6 {
  f:m d:m g:7 c:m/es aes:maj7.6
  \alternative {
    \volta 1,3,5 {c2:m/g g4:7 c2.:7sus4 c:7}
    \volta 2,4,6 {c2:m/g g4:7 c2.:m
                  \break
  \alternative {
  \volta 6 \fine
  \volta 2 {s c2.:m g:7 c:7 f:m f:m7 fis:m7.5- c:m/g g:7 c:m g:7
  c:7 f:m f:m7 fis:m7.5- c2:m/g g4:7 c2.:m}
  \volta 4 {\break
            s c2.:m g:7 c:7 f:m f:m7 fis:m7.5- c:m/g g:7 c:m g:7
  c:7 f:m f:m7 fis:m7.5- c2:m/g g4:7 c2.:m}
  }
  }}
  }
}
}



sMusic = {
          g'2.( f) g4( e c f2.)
          aes( a c4 b) r8 c,
          c8. d16 \times 2/3 {es8 f g~} \times 2/3 {g bes aes~}
          aes g~ g4 r8 g 
          g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
          bes4 \times 2/3 {aes8 g f} \times 2/3 {aes g es~} es2 r8 c
          \times 2/3 {c d es~} es4 \times 2/3 {f8 g aes} d,2 r8 c
          c8. d16 es8 f \times 2/3 {g bes aes~} aes g~ g4 r8 g
          g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
          bes4 \times 2/3 {aes8 g f} \times 2/3 {aes g es~} es2 r8 c
          c d es f g b c2.
          \repeat volta 6 {
            c4 bes4. aes8 4 g4. f8 4 es f g2. g4 f es
            \alternative { 
              
              \volta 1,3,5 {
                            es2 d4 c2. g'4( aes bes)}
              \volta 2,4,6 {\set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
                            es,2 d4 
                            c2.
                            \alternative {
\volta 6 \fine
\volta 2 {\set Score.voltaSpannerDuration = #(ly:make-moment 12/4)
r2 r8 c c8. d16 \times 2/3 {es8 f g~} \times 2/3 {g bes aes~}
aes g~ g4 r8 g 
g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
bes aes~ \times 2/3 {aes8 g f} \times 2/3 {aes g es~} es2 r8 c
c8. d16 es8 f g aes d,2 r8 c
c8. d16 \times 2/3 {es8 f g~} \times 2/3 {g bes aes~} aes g~ g4 r8 g
g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
bes aes g4 \times 2/3 {f8 aes g} es2 r8 c
c d es f g b c2.

}
\volta 4 {
r2. es,( d) e4( g bes) aes2.~( aes a) c( b2) r8 c,
c d es f~ \times 2/3 {f g bes} aes g~ g4 r8 g
g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
bes4~ \times 2/3{bes8 aes g} \times 2/3 {f aes g} es2 r8 c
c d es f g b c2.
}
                }
            } }
            
          }
          
}

sLyrics = \lyricmode { 
  Oh __ Oh __ _ 
  "1. L'a" -- mour est u -- ne for -- te -- res -- se __
  dont les murs sont faits __ de pro -- mes -- ses __
  C'est là que dor -- ment les a -- mants __
  Ca -- chés de tout ca -- ché du temps
  
  Et quand leurs lè -- vres se re -- joi -- gnent __ 
  C'est tout l'u -- ni -- vers __ qui s'é -- loi -- gne __
  Au -- tour le si -- lence est par -- fait __
  Comme un ins -- tant d'é -- ter -- ni -- té.
  
  Tour -- ne le, tour -- ne le, tour -- ne le temps
  Tout au -- tour des a -- mants Oh __ des a -- mants
  
  "2. L'a" -- mour est u -- ne for -- te -- res -- se __
  dont les murs sont faits __ de ten -- dres -- se __
  Aus -- si fin __ qu'un pa -- pier de soie __
  Mais qui ne se dé -- chi -- re pas
  
  La peau et le peau qui se tou __ chent
  Les mots qui nais -- sent sur la bou -- che __
  Di -- sant tout bas comme un se -- cret
  Qu'on peut tout prendre et tout don -- er
  
  Oh __ Oh __ Oh __ Oh __
  
  Si de -- vant vous les __ a -- mants pas -- sent __
  Quoi qu'ils se disent ou __  quoi qu'ils fas -- sent __
  Ne vous __ po -- sez pas de ques -- tions
  L'a -- mour a tou -- jours sa rai -- son.



}



soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \transpose c d {\relative c' {
    \sMusic}}
  \addlyrics {\sLyrics}
>>

aMusic = {es2.( d)
          e( c) f4( es d es2. es4 d) r8 c
          c8. d16 \times 2/3 {es8 f g~} \times 2/3 {g bes aes~}
          aes g~ g4 r8 g g d' d c~ \times 2/3 {c c g} g f~ f4 r8 f
          bes4 \times 2/3 {aes8 g f} \times 2/3 {aes g es~} es2 r4
          c2.( b2) r8 c c8. c16 c8 c \times 2/3 {es c c~} c b~ b4 r8 c
          e g f e~ \times 2/3 {e e e} e f~ f4 r8 f
          f4 \times 2/3 {8 d es} \times 2/3 {es d c~} c2 r8 es
          c c c c d f es2.
          \repeat volta 6 {
            aes4 g4. f8 4 es4. d8 4 c b c2. es4 d c
            \alternative { 
\volta 1,3,5 {g'2 f4 f2. e4( f g)} 
\volta 2,4,6 {\set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
              g2 f4 es2.
                            \alternative {
\volta 6 \fine
\volta 2 {\set Score.voltaSpannerDuration = #(ly:make-moment 12/4)
r2 r8 c c8. c16 \times 2/3 {8 d es~} \times 2/3 {es c c~}
c b~ b4 r8 c 
e f f e~ \times 2/3 {e e e} e f~ f4 r8 f
f f~ \times 2/3 {f8 d es} \times 2/3 {es d c~} c2 r8 es
c8. c16 c8 8 8 8 b2 r8 c
c8. c16 \times 2/3 {c8 d es~} \times 2/3 {es c c~} c b~ b4 r8 c
e g f e~ \times 2/3 {e e e} e f~ f4 r8 f
f f d4 \times 2/3 {es8 es d} c2 r8 es
c c c c d f es2.
}
\volta 4 {
r2. c( b) c4( e g) c,2.( f fis) g( f2) r8 c
c c c c~ \times 2/3 {c d c} c b~ b4 r8 c
e g f e~ \times 2/3 {e e e} e f~ f4 r8 f
g4~ \times 2/3{g8 f d} \times 2/3 {es es d} c2 r8 es
c c c c d f es2.
}
                }
} 
}
            
          }
          
}

aLyrics = \lyricmode {Oh __ Oh __ _ 
                       "1. L'a" -- mour est u -- ne for -- te -- res -- se __
                       dont les murs sont faits __ de pro -- mes -- ses __
                       C'est là que dor -- ment les a -- mants __
                       Oh __
                       Et quand leurs lè -- vres se re -- joi -- gnent __ 
                       C'est tout l'u -- ni -- vers __ qui s'é -- loi -- gne __
                       Au -- tour le si -- lence est par -- fait __
                       Comme un ins -- tant d'é -- ter -- ni -- té.
                       Tour -- ne le, tour -- ne le, tour -- ne le temps
                       Tout au -- tour des a -- mants Oh __ des a -- mants

  "2. L'a" -- mour est u -- ne for -- te -- res -- se __
  dont les murs sont faits __ de ten -- dres -- se __
  Aus -- si fin __ qu'un pa -- pier de soie __
  Mais qui ne se dé -- chi -- re pas
  
  La peau et le peau qui se tou __ chent
  Les mots qui nais -- sent sur la bou -- che __
  Di -- sant tout bas comme un se -- cret
  Qu'on peut tout prendre et tout don -- er
  
  Oh __ Oh __ Oh __ Oh __
  
  Si de -- vant vous les __ a -- mants pas -- sent __
  Quoi qu'ils se disent ou __  quoi qu'ils fas -- sent __
  Ne vous __ po -- sez pas de ques -- tions
  L'a -- mour a tou -- jours sa rai -- son.

}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \transpose c d {\relative c' {\aMusic}}
  \addlyrics {\aLyrics}
>>


bMusic = {c2.( b) c( bes'4 a2) f2.( fis g2) r4
          r2. r r r r r g( f2) r8 es es8. f16 es8 d \times 2/3 {c es d~}
          d d~ d4 r8 e
          c e g bes~ \times 2/3 {bes g bes} bes aes~ aes4 r8 aes
          g4 \times 2/3 {f8 8 8} \times 2/3 {8 8 fis~} fis2 r8 g
          es f g d f d c2.
          \repeat volta 6 {
            f4 g4. aes8 d,4 es4. f8 b,4 g' d es2. c4 f aes
            \alternative { 
\volta 1,3,5 {g2 b,4 c2. r} 
\volta 2,4,6 {\set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
g'2 g4 c,2.
\alternative {
\volta 6 \fine
\volta 2 {\set Score.voltaSpannerDuration = #(ly:make-moment 12/4)
r2 r8 es es8. f16 \times 2/3 {es8 d c~} \times 2/3 {c es d~}
d d~ d4 r8 e 
c e g bes~ \times 2/3 {bes g bes} bes aes~ aes4 r8 aes
g f~ \times 2/3 {f8 8 8} \times 2/3 {8 8 fis~} fis2 r8 g
es8. f16 g8 es es d f2 r8 es
es8. f16 \times 2/3 {es8 d c~} \times 2/3 {c es d~} d d~ d4 r8 e
c e g bes~ \times 2/3 {bes g bes} bes aes~ aes4 r8 aes
g f f4 \times 2/3 {8 8 8} fis2 r8 g
es f g d f d c2.
}
\volta 4 {r2 r8 c c8. d16 \times 2/3 {es8 f g~} \times 2/3 {g bes aes~}
aes g~ g4 r8 g
g d' d8. c16 c8 g g8 f~ f4 r8 f
bes4 \times 2/3 {aes8 g f} \times 2/3 {aes g es~} es2 r8 c
c d es4 \times 2/3 {f8 g aes} d,2 r8 es
es f es d~ \times 2/3 {d c es} d d~ d4 r8 e
c e g bes~ \times 2/3 {bes g bes} bes aes~ aes4 r8 aes
f4~ \times 2/3 {8 8 8} \times 2/3 {8 8 8} fis2 r8 g
es f g d f d c2.
}
                }
} 
}
            
          }
}

bLyrics = \lyricmode { Oh __ Oh__ _
                       _oh __
                       Et quand leurs lè -- vres se re -- joi -- gnent __ 
                       C'est tout l'u -- ni -- vers __ qui s'é -- loi -- gne __
                       Au -- tour le si -- lence est par -- fait __
                       Comme un ins -- tant d'é -- ter -- ni -- té.
                       Tour -- ne le, tour -- ne le, tour -- ne le temps
                       Tout au -- tour des a -- mants  des a -- mants

  "2. L'a" -- mour est u -- ne for -- te -- res -- se __
  dont les murs sont faits __ de ten -- dres -- se __
  Aus -- si fin __ qu'un pa -- pier de soie __
  Mais qui ne se dé -- chi -- re pas
  
  La peau et le peau qui se tou __ chent
  Les mots qui nais -- sent sur la bou -- che __
  Di -- sant tout bas comme un se -- cret
  Qu'on peut tout prendre et tout don -- er
  
  "3. L'a" -- mour est u -- ne for -- te -- res -- se __
  Qu'il faut ré -- in -- ven -- ter sans ces -- se __
  Pour qui ou -- blie de la rê -- ver __
  Elle dis -- pa -- rait à tout ja -- mais.
  
  Si de -- vant vous les __ a -- mants pas -- sent __
  Quoi qu'ils se disent ou __  quoi qu'ils fas -- sent __
  Ne vous __ po -- sez pas de ques -- tions
  L'a -- mour a tou -- jours sa rai -- son.

}

hommes = \new Staff \with {instrumentName="H."} {
  \hommes_style
  \specs
  \transpose c d {\relative c {\bMusic}}
  \addlyrics {\bLyrics}
}


\include "utils/books.ly"
