\version "2.18.2"

%midiOutput = 

\header {
  title = \markup{Fuga}
  subtitle = \markup{\italic {Arrangement for two violins}}
  composer = "Johann Sebastian Bach"
  opus = \markup{BWV 1005}
  arranger = "Arrangers: Niels Lachat, Baptiste Vial"
  
  instrument = "Violin 1"
}

violinOne =  \relative g' {
  \time 2/2
  \partial 2 g2->
  a4 g8-.( f-.) e4 f
  g2 d4-.( e-.)
  f e f g8-.( f-.)
  e4 f8 g c2
  e4 d8-.( c-.) b4 cis
  d2 a4-.( b-.)
  
  c b c d8-.( c-.)
  
}


violinTwo = \relative g' {
  \time 2/2
  \partial 2 r2
  r1 r r 
  r2 a
  gis g
  
  
  
}

\score {
  \midi {
    \tempo 4 = 100
  }
  
  <<
    \new Staff \with
    {
      instrumentName = #"Violin 1"
      shortInstrumentName = #"V1"
    }
    { 
      \set Staff.midiInstrument = #"violin"
      \violinOne 
    }
  
  
    \new Staff \with
    {
      instrumentName = #"Violin 2"
      shortInstrumentName = #"V2"
    }
    { 
      \set Staff.midiInstrument = #"viola"
      \violinTwo 
    }
  >>
}

