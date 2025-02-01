\version "2.24.3"
\include "english.ly"
\header {
  dedication = "잠시세상에내가살면서에 맞춘"
  title = "씨뿌리는자의비유"
}

\paper {
  #(set-paper-size "a5")
}

global = {
  \time 4/4
  \key g \major
  \tempo 4=100
}

chordTop = \chordmode {
  \partial 4 s4 
  g1 e:m c2 d g1
  d g2 e:m a1 d 
  g a:m b2:m e:m a: d
  g: g/fs e:m c g/b c d g
}
soprano = \relative c' {
  \global
  \partial 4   d8. d16 |
  g4 g g g8. a16 
  b4 b b b8. a16 
  g4. a8 g4 e e d2 \break
  
  g8. g16 
  fs4 a a a8. a16 
  g4 b b b8. b16 
  a4 a b cs  d2 d4 
  \break
  d8. c16  
  b4 b b b8. a16 
  g8 g4. g4 fs8. e16 
  d4 d g b4 b a2 
  \break
  d8. c16 
  b4 b b b8. a16 
  g8 g4. g4 fs8. e16 
  d4 d g b4 a2 g4 \bar "|." 
  
}

alto = \relative c' {
  \global
  
}

tenor = \relative c' {
  \global
  
}

bass = \relative c {
  \global
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  천 국 말 씀 이 들 려 지 지 만 깨 닫 지 를 못 하 는 자
  마 귀 가 와 서 구 원 못 얻 게 진 리 말 씀 훔 쳐 가 네
  영 혼 뺏 기 고 생 애 뺏 기 고 목 숨 또 한 뺏 기 겠 네
    어 찌 하 려 나   시 간 다 잃 고 모 든 것 을 다 잃 겠 네
}

verseTwo = \lyricmode {
  \set stanza = "2." 
  말 씀 을 듣 고 기 뻐 받 으 나 환 란 있 고 박 해 있 어 
뿌 리 가 없 는 돌 짝 밭 마 음 넘 어 지 고 자 빠 지 네  
환 란 가 운 데 박 해 가 운 데 인 내 하 며 이 기 는 자  
되 기 어 렵 네 진 리 없 는 자 그 때 마 다 넘 어 지 네  

 
}

verseThree = \lyricmode {
  \set stanza = "3."

가 시 떨 기 에 떨 어 진 말 씀 가 시 에 게 기 운 막 혀  
자 랄 수 없 네 말 라 서 죽 네 돈 때 문 에 죽 는 구 나  
자 기 하 고 픈 일 을 하 려 고 천 국 잃 고 영 혼 잃 네  
어 리 석 도 다 기 막 히 도 다 모 든 것 을 다 잃 겠 네  
}
verseFour = \lyricmode {
  \set stanza = "4."
좋 은 마 음 에 떨 어 진 말 씀 하 늘 나 라 만 들 도 다  
자 유 의 나 라 안 식 의 나 라 목 마 름 도 없 는 나 라  
영 과 진 리 의 신 령 한 나 라 생 명 수 가 흐 르 도 다  
생 명 나 무 의 열 매 많 도 다 삼 십 배 요 백 배 로 다 
}
\score {
  \new ChoirStaff <<
    \new ChordNames   {
       \chordTop
    }
    \new Staff \with {
      midiInstrument = "violin"
  %    instrumentName = \markup \center-column { S A }
    } {
      \new Voice = "soprano" { \voiceOne \soprano }
    }
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
 
  >>
  \layout {
    indent = 0
    
  }
  \midi { }
}
