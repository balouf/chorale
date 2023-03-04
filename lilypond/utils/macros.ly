
emph = {
  \override Lyrics.LyricText.font-shape = #'italic
  % \override Lyrics.LyricText.font-series = #'bold
}

normal = {
  \revert Lyrics.LyricText.font-shape
  % \revert Lyrics.LyricText.font-series
}


soprano_style = {
  \set Staff.midiInstrument = "synth voice"
  \clef treble
  \accidentalStyle modern-cautionary

}


alto_style = {
  \set Staff.midiInstrument = "synth voice"
  \clef treble
  \accidentalStyle modern-cautionary

}

tenor_style = {
  \set Staff.midiInstrument = "synth voice"
  \clef treble
  \accidentalStyle modern-cautionary

}


hommes_style = {
  \set Staff.midiInstrument = "synth voice"
  \clef bass
  \accidentalStyle modern-cautionary

}
