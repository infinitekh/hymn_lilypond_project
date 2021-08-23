\version "2.22.0"
\include "english.ly"
\header {
  title = "202. 하나님 아버지 주신 책은"
}

global = {
  \time 6/8
  \key g \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c' {
  \global \autoBeamOff
  d8 d d d d d d g  a b4.  
  a8 a a a a g b b a8 g4.  \break 
  
    d8 d d d d d d g  a b4.  
  a8 a a a a g b b a8 g4.  \break
  
  d'8 d d d4 b8 a g e e4. 
  d8 d d a'4. d,8 g a b4. \break
  
  d8 d d d4 b8 a g e e4. 
  d8 d d a'4 b8 g2.  \break 
}

alto = \relative c' {
  \global \autoBeamOff
  b8 b b b c a     b b c d4. 
  c8 fs e d c b d d c8 b4. 
  
  b8 b b b c a     b b c d4. 
  c8 fs e d c b d d c8 b4. 
  
  g'8 g g d4 d8 e e c c4. c8 c c c4. b8 b c d4. 
  g8 g g d4 d8 e e c c4. c8 c c c4 d8 b2. 
  
  
}

tenor = \relative c' {
  \global
  g8 g g g a fs g g fs g4.   
  fs8 a g fs fs g g e fs8 g4. 
  
  g8 g g g a fs g g fs g4.   
  fs8 a g fs fs g g e fs8 g4. 
  
  
  b8 b b b4 d8 c c g g4.  fs8 a g fs4. g8 g fs g4. 
  
  b8 b b b4 d8 c c g g4. fs8 fs fs fs8[ e ]fs  g2.
  
}

bass = \relative c {
  \global
  g8 g g g' fs d g, g d' g4.  
  d8 d d d d g d d d8 g,4. 
  
  g8 g g g' fs d g, g d' g4.  
  d8 d d d d g d d d8 g,4. 
  
  g'8 g g g4 g8 c, c c c4. d8 d d d4. g8 g d g4. 
  
  g8 g g g4 g8 c, c c c4. d8 d d d4 d8 g,2. 
}

verseOne = \lyricmode {
  \set stanza = "1."
 하 나 님   아 버 지   주 신   책 은 
귀 하 고   중 하 신   말 씀 일 세 
기 쁘 고   반 가 운   말 씀 중 에 
날   사 랑 한 단   말   참   좋 도 다 



}

verseTwo = \lyricmode {
  \set stanza = "2."
  

  구 속 의   은 혜 를   저 버 리 고 
어 긋 난   딴 길 로   가 다 가 도 
예 수 의   사 랑 만   생 각 하 면 
곧   다 시   예 수 께   돌 아 오 리 

  
}

verseThree = \lyricmode {
  \set stanza = "3."
구 주 의   영 광 을   바 라 보 며 
예 수 의   사 랑 을   찬 양 하 리 
영 원 히   찬 양 할   나 의   노 래 
예 수 의   이 름 이   귀 하 도 다 

}
verseFour = \lyricmode {
  \set stanza = "4."

   주   예 수   날   사 랑   하 시 오 니 
나   또 한   예 수 를   사 랑 하 네 
날   구 원   하 시 려   내 려 오 사 
십 자 가   위 에 서   죽 으 셨 네 

  
}
verseFive = \lyricmode {
  \set stanza = "5."
  
 주   예 수   날   사 랑   하 시 오 니 
마 귀 가   놀 라 서   물 러 가 네 
주   나 를   이 렇 게   사 랑 하 니 
그   사 랑   어 떻 게   보 답 할 까   
  
}

verseChorus =\lyricmode {
  주 께 서   나 를   사 랑 하 니 
즐 겁 고 도   즐 겁 도 다 
주 께 서   나 를   사 랑 하 니 
나 는   참   기 쁘 다  

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "string ensemble 1"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { \verseOne  \verseChorus}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
   \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
    \new Staff \with {
      midiInstrument = "string ensemble 1"
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
