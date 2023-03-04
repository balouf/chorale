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
      \tenor
      \basse
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \soprano
      \alto
      \tenor
      \basse
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
  \bookOutputSuffix "-tenor"
  \header{
    instrument = "Tenor"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \tenor
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \tenor
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "-basse"
  \header{
    instrument = "Basse"
  }
  \score {
    \new ChoirStaff
    <<
      \accords
      \basse
    >>

  }
  \score {
    \unfoldRepeats
    <<
      \accords
      \basse
    >>
    \midi {}
  }
}
