\version "2.24.3"
\include "english.ly"
\header {
  dedication = "잠시세상에내가살면서에 맞춘"
  title = "씨뿌리는자의비유"
}

\paper {
  #(set-paper-size "a4")
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
  a4 a b cs  d2 d8 r 
  \break
  d8. c16  
  b4 b b b8. a16 
  g8 g4. g4 fs8. e16 
  d4 d g b4 b a2 
  \break
  d8. c16 
  b4 b b b8. a16 
  g8 g4. g4 fs8. e16 
  d4 d g b4 a g2 
  
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
  잠 시 세 상 에 내 가 살 면 서 항 상 찬 송 부 르 다 가 
  날 이 저 물 어 오 라 하 시 면 영 광 중 에 나 아 가 리 
  열 린 천 국 문 내 가 들 어 가 세 상 짐 을 내 려 놓 고 빛 난 면 
  류 관 받 아 쓰 고 서 주 와 함 께 길 이 살 리
}

verseTwo = \lyricmode {
  \set stanza = "2." 
  눈 물   골   짜 기   더 듬 으 면 서 나 의 갈 길 다 간 후 에
  주 의 품 안 에 내 가 안 기 어 영 원 토 록 살 리 로 다
  
 
}

verseThree = \lyricmode {
  \set stanza = "3."
  나 의   가 는 길   멀 고   험 하 며   산 은   높 고   골 은   깊 어
  곤 한   나 의 몸   쉴 곳 없 어 도   복 된 날 이   밝 아 오 리
}
verseFour = \lyricmode {
  \set stanza = "4."
  한 숨 가 시 고   죽 음 없 는 날 사 모 하 며 기 다 리 니 내 가 그 리 던 
  주 를 뵈 올 때   나 의 기 쁨 넘 치 리    라 
}
\score {
  \new ChoirStaff <<
    \new ChordNames   {
       \chordTop
    }
    \new Staff \with {
      midiInstrument = "violin"
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
  >>
  \layout { }
  \midi { }
}
