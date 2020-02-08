\version "2.18.2"

\include "articulate.ly"

midiBloc = {
    \tempo 4 = 100
  }
global = {
  \time 2/2
}


\header {
  title = \markup{Fuga}
  subtitle = \markup{\italic {Arrangement for two violins}}
  composer = "Johann Sebastian Bach"
  opus = \markup{BWV 1005}
  arranger = "Arrangers: Niels Lachat, Baptiste Vial"
}

violinOne =  \new Voice \relative g' {
  \set Staff.instrumentName = #"Violin 1"
  \set Staff.shortInstrumentName = #"V1"
  \set Staff.midiInstrument = #"violin"
  
  % l1 p.o.
  \partial 2 g2->
  a4 g8-.( f-.) e4 f
  g2 d4-.( e-.)
  f e f g8-.( f-.)
  e4 f8 g c2
  e4-_ d8-.( c-.) b4 cis
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
  
  % mesure 26-30
  r8 g a b <<ees,2 c'>>
  d, e!
  f4 e f g8-.( f-.)
  e2 fis
  g d'
  
  % mesure 31-36
  cis c
  b bes
  a b!
  r4  c8-.( b!-.) a4 r
  r d8-.( c-.) d4 r
  r bes8-.( a-.) g4 r
  
  % mesure 37-41
  r c8-.( bes-.) c4 r
  r a8-.( g-.) f g e f
  <b,! d> r r r r2 % pas sûr de la notation, à voir
  r4 c'8-.( b-.) a c e g,
  <d f> r r r r2
  
  % mesure 42-46
  
  
  
}


violinTwo = \new Voice \relative g' {
  \set Staff.instrumentName = #"Violin 2"
  \set Staff.shortInstrumentName = #"V2"
  \set Staff.midiInstrument = #"violin"
  
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
  e1 %r pas sûr à voir si on tient les rondes
  d1 %r
  
  % l4 p.o.
  a'2 d,
  g4 \breathe r2 d'4
  <<g, cis>> r2 <<g4 cis!>>
  <<f,! d'>> r2 c!4
  <f, b> r2 <<f4 b>>
  <e, c'> <f d'> <<c2 g'>>
  d4 c8-.( b-.) a4 b
  
  % mesure 26-30
  <<c2 e>> g,4 a
  bes a bes c8-.( bes-.)
  a2 b!
  c4 b c d8-.( c-.)
  b4 a <<bes2 g'>>
  
  % mesure 31-36
  <<a,4 a'>> g8-.( f-.) e4 fis
  <<g,2 g'>> d4-.( e-.)
  <d f> e <g, f'> g'8-.( f-.)
  <<c4 e>> r2 g4
  <c, fis> r2 <<c4 fis>>
  <bes, g'> r2 f'!4
  
  % mesure 37-41
  <bes, e> r2 <<bes4 e>>
  <a, f'> r r2
  r8 a' d c b! a g f
  <<c4 e>> r r2
  r8 a f' e d c b a
  
}

\score {
  \new StaffGroup 
  <<
    \new Staff 
    <<
      \global 
      \violinOne 
    >>
    \new Staff << \global \violinTwo >>
  >>
  
  %\midi {\midiBloc}
}

