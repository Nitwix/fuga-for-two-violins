\version "2.18.2"

midiBloc = {
    \tempo 4 = 100
  }

\header {
  title = \markup{Fuga}
  subtitle = \markup{\italic {Arrangement for two violins}}
  composer = "Johann Sebastian Bach"
  opus = \markup{BWV 1005}
  arranger = "Arrangers: Niels Lachat, Baptiste Vial"
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
  b4 c8-.( d-.) e2~
  e d~
  d4 b <e g> d
  <cis a'> g'8-.( f-.) <<c4 e>> fis
  <b, g'>2 <<bes4-1-.( d>> e-.)
  
}


violinTwo = \relative g' {
  \time 2/2
  \partial 2 r2
  r1 r r 
  r2 a
  gis g
  fis f
  
  e4 d e fis
  g f! g e
  f e f d
  e2 e
  <a, e'> <a a'>
  <g d'> g
  
  
}

\score {
  %\midi {\midiBloc}
  
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

