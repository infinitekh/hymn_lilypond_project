\version "2.22.0"
\include "english.ly"
\header {
  title = "찬송가 88장. 내 진정 사모하는"
}

global = {
  \time 4/4
  \key f \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  \partial 4 a8[ bf]   c   c d c c  a4 f8  g f f d c4 f8 g    a a  a  a d c c a g2.  \bar "|" \break 
  a8[ bf] c c d c c a4 f8 g f f d c4 f8 g a c a f g bf a g f2. r8  \bar "" \break 
  
  f8 bf bf bf bf bf d4 d8 d c c a c4 a8 [  g] f f f f d' c c a g2.  \bar "" \break 
  
  a8 bf c c d c c a4 f8 g f f d c4 f8 g a c a f g bf a g \partial 2. f2.   \bar "||"  bf2 a \bar "|."
} 

alto = \relative c' {
  \global
  f4      f8 f f f f f4 f8 d d d bf c4 c8 c f f f f f f e f e2. 
  
  f4     f8 f f f f f4 f8 d d d b c4 c8 c f a f f e e f e c2. r8  
  
  c8 d d d d d f4 f8 f f f f f4 f c8 c c f f f e f e 2.
  
  f8 f f f f f f f4 f8 d d d bf c4 c8 c f a f f e e f e c2. f2 f
  
}

tenor = \relative c' {
  \global
  c8 [bf  ]a a bf a a c4 a8 bf bf bf bf a4 a8 bf c c c c bf c c c c2. 
  
  c8[ bf ]a a bf a a c4 a8 bf bf bf bf a4 a8 bf c c c a bf d c bf a2. r8
  
  a f f f f f bf4 bf8 bf a a c a4 c8[( bf]) a a a a bf c c c c2. 
  
  c8 bf a a bf a a c4 a8 bf bf bf bf a4 a8 bf c c c a bf d c bf a2.       
  
  d2 c
  
}

bass = \relative c {
  \global
  f4 f8 f f f f f4 f8 bf, bf bf bf f'4 f8 f f f f f bf a g f c2. 
  
  f4 f8 f f f f f4 f8 bf, bf bf bf f'4 f8 f f f f f c c c c f2. r8
  
  f bf, bf bf bf bf bf4 bf8 f' f f f f4 f f8 f f f bf a g f c2. 
  
  f8 f f f f f f f4 f8 bf, bf bf bf f'4 f8 f f f f f c c c c f2. bf,2 f' 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
내   진 정   사 모 하 는   친 구 가   되 시 는   구 주   예 수 님 은   아 름 다 워 라 
산   밑 에   백 합 화 요   빛   나 는   새 벽   별   주 님   형 언 할   길   아 주   없 도 다 
내   맘 이   아 플 적 에   큰   위 로   되 시 며   나    외 로 울   때   좋 은   친 구 라 
주 는   저   산   밑 에   백 합 빛   나 는   새 벽   별 이   땅   위 에   비 길   것 이   없 도 다   아 멘 


  
}

verseTwo = \lyricmode {
  \set stanza = "2."
 내   맘 의   모 든   염 려   이   세 상   고 락 도   주 님   항 상   같 이   하 여   주 시 고 
시 험 을   당 할   때 에   악 마 의   계 교 를   즉 시   물 리 치 사   나 를   지 키 네 
온   세 상   날   버 려 도   주   예 수   안   버 려   끝 까 지   나 를   돌 아 보 시 니 

  
}

verseThree = \lyricmode {
  \set stanza = "3."
내   맘 을   다 하 여 서   주 님 을   따 르 면   길 이 길 이   나 를   사 랑 하 리 니 
물   불 이   두 렵 잖 고   창   검 도   겁 없 네   주 는   높 은   산 성   내   방 패 시 라 
내   영 혼   먹 이 시 는   그   은 혜   누 리 고   나   친 히   주 를   뵙 기   원 하 네 
  
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
