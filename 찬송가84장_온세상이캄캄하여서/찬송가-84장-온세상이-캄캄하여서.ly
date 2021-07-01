\version "2.22.0"
\include "english.ly"

\header {
  title = "찬송가 84장 온세상이 캄캄하여서"
}

global = {
  \time 6/8
  \key ef \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c' {
  \global
  \partial 8   
  \autoBeamOff
  bf8 bf ef g bf4 c8 bf4 g8 ef4 f8 g4 g8 bf af g f4. ~ f4  \bar "" \break 
  
  bf,8 bf ef g bf4 c8 bf4 g8 ef4 f8 g4 g8 f ef f ef2.  \bar "" \break 
  
  g4^\markup{\box \bold "후렴"} r8 g4 r8 g f g af4 r8 af4 r8 af4 r8 af g af bf4 r8 ef4 ef8 d4 c8    \bar "" \break 
  
  bf4. g g ~ g8 f ef f2. g4 r8 g4 r8 g f g af4 r8 af4 r8 af4 r8  \bar "" \break 
  
  af8 g8 af8 bf4 r8 ef4 ef8 d4 c8 bf4 g8 ef4 f8 g4. g4 f8 ef4. ~ ef4  \bar "|."
  
}

alto = \relative c' {
  \global
  bf8 bf bf ef ef4 ef8 ef4 ef8 ef4 d8 ef4 ef8 g f ef d4.~ d4 
  
  bf8 bf bf ef ef4 ef8 ef4 ef8 ef4 ef8 ef4 ef8 d ef d ef2. 
  
  ef4 r8 ef4 r8 ef f ef d4 r8 d4 r8 d4 r8 d ef d ef4 r8 bf'4 bf8 bf4 bf8 
  
  g4. ef ef~ ef8 bf ef d2. ef4 r8 ef4 r8 ef f ef d4 r8 d4 r8 d4 r8 
  
  d8 ef d ef4 r8 g4 g8 g4 af8 g4 ef8 ef4 ef8 ef4. d4 d8 ef4.~ ef4 
  
  
  
}

tenor = \relative c' {
  \global
  g8 g g bf g4 af8 g4 bf8 bf4 bf8 bf4 bf8 g bf bf bf4.~ bf4 
  
  g8 g g af g4 af8 g4 bf8 bf4 c8 bf4 bf8 af g af g2. 
  
  bf4 r8 bf4 r8 bf bf bf bf4 r8 bf4 r8 bf4 r8 bf bf bf bf4 r8 bf4 bf8 bf4 c8 
  
  ef4. bf c~ c8 bf g bf2. bf4 r8 bf4 r8 bf bf bf bf4 r8 bf4 r8 bf4 r8 
  
  bf bf bf bf4 r8 bf4 bf8 bf4 c8 ef4 bf8 bf4 c8 bf4. bf4 af8 g4.~ g4 
  
}

bass = \relative c {
  \global
  ef8 ef ef ef ef4 ef8 ef4 ef8 g4 f8 ef4 ef8 ef d ef bf4.~ bf4
  
  ef8 ef ef ef ef4 ef8 ef4 ef8 g4 af8 bf4 bf8 bf, bf bf ef2. 
  
  ef4 r8 bf4 r8 ef d ef f4 r8 f4 r8 bf,4 r8 f' ef f g4 r8 ef4 ef8 ef4 ef8 
  
  ef4. ef c~ c8 d ef bf2. ef4 r8 bf4 r8 ef d ef f4 r8 f4 r8 bf,4 r8 
  
  f' ef f g4 r8 ef4 ef8 ef4 ef8 ef4 ef8 g4 af8 bf4. bf,4 bf8 ef4.~ ef4 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
 온   세 상 이   캄 캄   하 여 서   참   빛 이   없 었 더 니 
그   빛   나 는   영 광   나 타 나   온   세 상   비 치 었 네 

영 광   영 광 의   주   영 광   영 광 의   주   밝 은   그   빛   내 게   비 추 었 네 

영 광   영 광 의   주   영 광   영 광 의   주   이   세 상 의   빛 은   오 직   주   예 수 님 

  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  주   말 씀 을   믿 는   사 람 은   그   맘 이   시 원 하 고 
주   명 령 을   준 행 하 는   자   그   길 이   환 하 겠 네 

  
}

verseThree = \lyricmode {
  \set stanza = "3."
 죄   가 운 데   사 는   사 람 은   그   눈 이   어 두 워 도 
그   죄 악 을   씻 는   날 에 는   그   눈 이   밝 아 지 네 


  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
