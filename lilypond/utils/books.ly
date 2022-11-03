#(set-global-staff-size conductor_size)
\book {
  \bookOutputSuffix "-tutti"
  \header{
    instrument = "Tutti"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \soprano
      \alto
      \hommes
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \soprano
      \alto
      \hommes
    >>
    \midi {}
  }
}


#(set-global-staff-size individual_size)
\book {
  \bookOutputSuffix "-soprano"
  \header{
    instrument = "Soprano"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \soprano
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \soprano
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-alto"
  \header{
    instrument = "Alto"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \alto
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \alto
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-hommes"
  \header{
    instrument = "Hommes"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \hommes
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \hommes
    >>
    \midi {}
  }
}
