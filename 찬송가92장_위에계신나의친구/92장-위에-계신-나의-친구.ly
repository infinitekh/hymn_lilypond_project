\version "2.22.0"
\include "english.ly"
\header {
  title = "92장 위에 계신 나의 친구 "
}

global = {
  \time 3/4
  \key bf \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  \partial 4.      f,8 d ef   f4. d'8 c bf f4.   bf8 a bf c4.   ef8 d c bf4.   f8 d ef 
  
  f4. bf8 c bf g4. bf8 a g  f4. f8 g a  \partial 4. bf4.  
  
  \bar "||" \time 4/4   \partial 4. bf8 a bf c2 ~c8    ef d c \break
  
  bf2 ~ bf8 bf a bf c2 ~ c8 ef d c d2 ~ d8 f, e f  \break
  
   d'2~ d8 d c bf g2 ~ g8 bf a g f4. bf8 bf4 a bf2 ~ bf8  \bar "|."
  
}

alto = \relative c' {
  \global
  d8 bf c d4. f8 ef d d4. d8 c d ef4. g8 f ef d4. d8 bf c d4. d8 ef d ef4. ef8 ef ef d4. d8 ef ef d4. 
  
  r8 r4 r8 a' a a a g f ef 
  
  d d ef ef d r r4 r8 a' a a a g f ef f f f f f r r4 
  
  r8 f f f f r r4 r8 ef ef ef ef ef ef ef d4. f8 ef4 ef d2 ~d8
}

tenor = \relative c' {
  \global
  bf8 f f  bf4. bf8 bf bf bf4. f8 f f     a4. a8 a a bf4. bf8 f f bf4. bf8 bf bf bf4. g8 a bf bf4. bf8 c c bf4. r8 r4 r8 c c c c r r4 
  
  r8 f, g g f r r4 r8 c' c c c r r4 r8 bf bf bf bf r r4 
  
  r8 bf bf bf bf r r4 r8 bf bf bf bf g a bf bf4. d8 c4 c bf2~ bf8
}

bass = \relative c {
  \global
  bf8 bf bf bf4. bf8 bf bf bf4. bf8 bf bf 
  
  f'4. f8 f f bf,4. bf8 bf bf bf4. bf8 bf bf ef4. ef8 ef ef f4. f8 f f bf,4. 
  
  r8 r4 r8 f' a c f, r r4 
  
  r8 bf, bf bf bf r r4 r8 f' a c f, r r4 r8 bf, bf bf bf r r4 
  
  r8 bf bf bf bf r r4 r8 ef ef ef ef ef ef ef  f4. f8 f4 f bf,2 ~ bf8
  
}

verseOne = \lyricmode {
  \set stanza = "1."
위 에   계 신   나 의   친 구   그 의   사 랑   지 극 하 다 
이 는   예 수   그 리 스 도   나 의   구 주   나 의   친 구 


사 랑 하 는   나 의   친 구   늘   가 까 이   계 시 도 다 
그 의   사 랑   놀 랍 도 다   변 함 없 는   나 의   친 구 
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
나 를   위 해   죽 으 시 고   나 를   구 원 하 셨 으 니 
기 쁨 으 로   경 배 하 며   찬 양 하 리   나 의   친 구 
  
}

verseThree = \lyricmode {
  \set stanza = "3."
 내   맘   속 에   늘   계 시 고   영 원 토 록   함 께   하 네 
가 지 되 어   하 나 되 리   포 도 나 무   나 의   친 구 

  
}
verseFour = \lyricmode {
  \set stanza = "4."
 그   날 이   와   황 금   길 에   그 의   영 광   바 라 보 며 
그 의   팔 로   날   안 을   때   만 나 보 리   나 의   친 구 
}
verseMen = \lyricmode {
  \repeat unfold 32 { \skip 1 }
  사 랑 하 는 나 의 친 구 늘 가 까 이 계 시 도 다 
 그 의 사 랑 놀 랍 도 다 
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
     \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verseMen
  >>
  \layout { }
  \midi { }
}
