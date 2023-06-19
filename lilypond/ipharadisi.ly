% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-default-paper-size "a4")

\paper { indent = 0\cm
system-system-spacing = #'((basic-distance . 1.1) (padding . 8))
}

\header {
  title = "Ipharadisi"
  composer = "Traditionnel (Afrique du Sud)"
  tagline = "<<Ph>> est une version explosive de la consonne occidentale <<p>>."

}

conductor_size = 20
individual_size = 20

\include "utils/macros.ly"
\include "utils/AccordsJazzDefs.ly"


specs = { \time 4/4
  \tempo 4 = 108
  \key f \major
}

accords = \chords {
  \partial 8 s8

}



sMusic = {\partial 8 f8 
          \repeat volta 2 {
          a4. 8 \times 2/3 {f4 8} r f
          g f f d \times 2/3 {f4 8} r f
          a4. 8 \times 2/3 {f4 8} r f
          a a g f \times 2/3 {g4 8} r f
          a4. 8 \times 2/3 {f4 8} r f
          g f f d \times 2/3 {f4 8} r f
          \times 2/3 {a4 g f} \times 2/3 {f g8} r f
          \alternative {
          \volta 1 {f f f f \times 2/3 {f4 8} r f}
          \volta 2 {f1 \fine}
          }
          }
}


sLyrics = \lyricmode {
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  Ku -- la -- pho so -- phum -- la kho -- na, I -- pha -- ra -- di -- si. I- -na.
}


soprano = \new Staff \with {instrumentName="S."} <<
  \soprano_style
  \specs
  \relative c' {\sMusic}
  \addlyrics {\sLyrics }
>>

aMusic = {\partial 8 c8
          \repeat volta 2 {
          f4. 8 \times 2/3 {c4 8} r c
          d d d d \times 2/3 {d4 8} r d
          f4. 8 \times 2/3 {c4 8} r c
          f f e d \times 2/3 {e4 8} r c
          f4. 8 \times 2/3 {c4 8} r c
          d d d d \times 2/3 {d4 8} r d
          \times 2/3 {f4 e d} \times 2/3 {d e8} r c
          \alternative {
          \volta 1 {c f f f \times 2/3 {f4 8} r c}
          \volta 2 {c1 \fine}
          }
          }
}

aLyrics = \lyricmode {
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  Ku -- la -- pho so -- phum -- la kho -- na, I -- pha -- ra -- di -- si. I- -na.
}


alto = \new Staff \with {instrumentName="A."} <<
  \alto_style
  \specs
  \relative c' {\aMusic}
  \addlyrics {\aLyrics }
>>


tMusic = {\partial 8 a'8
          \repeat volta 2 {
          c4. 8 \times 2/3 {a4 8} r a
          bes bes bes bes \times 2/3 {bes4 8} r bes
          c4. 8 \times 2/3 {a4 8} r a
          c c c a \times 2/3 {c4 8} r a
          c4. 8 \times 2/3 {a4 8} r a
          bes bes bes bes \times 2/3 {bes4 8} r bes
          \times 2/3 {c4 c a} \times 2/3 {a g8} r a
          \alternative {
          \volta 1 {a f f f \times 2/3 {f4 8} r a}
          \volta 2 {a1 \fine}
          }
          }
}

tLyrics = \lyricmode {
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  Ku -- la -- pho so -- phum -- la kho -- na, I -- pha -- ra -- di -- si. I- -na.
}

tenor = \new Staff \with {instrumentName="T."} <<
  \tenor_style
  \specs
  \relative c' {\tMusic }
  \addlyrics { \tLyrics}
>>

bMusic = {\partial 8 f8
          \repeat volta 2 {
          f4. 8 \times 2/3 {f4 8} r f
          bes,8 8 8 8 \times 2/3 {4 8} r bes
          f'4. 8 \times 2/3 {f4 8} r f
          f f e d \times 2/3 {c4 8} r c
          f4. 8 \times 2/3 {f4 8} r f
          bes,8 8 8 8 \times 2/3 {4 8} r bes
          \times 2/3 {f'4 e d} \times 2/3 {d c8} r c
          \alternative {
          \volta 1 {f f f f \times 2/3 {f4 8} r f}
          \volta 2 {f1 \fine}
          }
          }
}


bLyrics = \lyricmode {
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  I -- pha -- ra -- di -- si, i -- kha -- ya la -- ba -- fi -- le,
  Ku -- la -- pho so -- phum -- la kho -- na, I -- pha -- ra -- di -- si. I- -na.
}

basse = \new Staff \with {instrumentName="B."} <<
  \hommes_style
  \specs
  \relative c {\bMusic }
  \addlyrics { \bLyrics}
>>


\include "utils/booksq.ly"
