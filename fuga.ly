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
  
  % l1 p.o.
  \partial 2 g2->
  a4 g8-.( f-.) e4 f
  g2 d4-.( e-.)
  f e f g8-.( f-.)
  e4 f8 g c2
  e4 d8-.( c-.) b4 cis
  d2 a4-.( b-.)
  
  % l2 p.o.
  c b c d8-.( c-.)
  b4 c8-.( d-.) e2~
  e d~
  d4 b <e g> d
  <cis a'> g'8-.( f-.) <<c4 e>> fis
  <b, g'>2 <<bes4-1-.( d>> e-.)
  
  % l3 p.o.
  <<a,4 f'>> <g, e'> <a f'> <<b!8-.( g'>> f-.)
  <<c4 e>> d <<c4 e>> f
  <b,! g'> f' <<cis-3 g'-2>> a8-.( g-.)
  <<d4 f>> g <<c,! a'>> d,
  <<e gis>> d8-.( c-.) <<b4 g'!>> cis,
  <<d2 fis>> <<a,4-.( f'>> b,-.)
  
  % l4 p.o.
  <c e> b <<c fis>> d8-.( c-.)
  b4 \breathe g'8-.( f!-.) e4 r
  r a8-.( g-.) a4 r
  r f8-.( e-.) d4 r
  r g8-.( f-.) g4 r
  r2 e
  <<fis, a>> <f d'>
  
}


violinTwo = \relative g' {
  \time 2/2
  
  % l1 p.o.
  \partial 2 r2
  r1 r r 
  r2 a
  gis g
  fis f
  
  % l2 p.o.
  e4 d e fis
  g f! g e
  f e f d
  e2 e
  <a, e'> <a a'>
  <g d'> g
  
  % l3 p.o.
  d'1
  <<a2 e'>> a
  e <a, e'>
  d f
  e r
  d r
  
  % l4 p.o.
  a'2 d,
  g4 \breathe r2 d'4
  <<g, cis>> r2 <<g4 cis!>>
  <<f,! d'>> r2 c!4
  <f, b> r2 <<f4 b>>
  <e, c'> <f d'> <<c2 g'>>
  d4 c8-.( b-.) a4 b
  
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

