\version "2.22.0"

\header {
  title = "58장 지난 밤에 보호하사"
}

global = {
  \time 4/4
  \key bes \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
  bes4 d8. c16 bes4 g bes d8. c16 bes4 f  
  g bes f d' |  d8[ c] c a bes 2 
  es4 g, f bes | d8[ c] bes a bes4 f | g bes f d' c a bes 2 \bar "||"
  bes bes  \bar "|."
  
}

alto = \relative c' {
  \global
  d4 f8. es16 d4 d d f8. es16 d4 d es es d f f8[ es] es c d2   \break
  es4 es f d f8[ es] d c d4 d es es d f f es d2 es d 
  
}

tenor = \relative c' {
  \global
  bes4 bes bes bes bes bes bes bes | bes bes bes bes f f f2  \break
  bes4 bes bes bes f f f bes bes bes bes bes a c bes2 g bes 
  
}

bass = \relative c {
  \global
  bes4 bes bes bes bes bes bes bes   es g bes bes, f' f bes,2 \break
  g'4 es d bes f' f bes, bes es g bes bes, f' f bes,2 es bes 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  지 난 _ 밤 에 보 호  _ 하 사 잠 잘 자 게 했 _ 으 _ 니 
  고 마 우 신 주 _ 의 _ 은 총 감 사 찬 송 합 니 다 
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  우 리 _ 육 신 평 안 _ 함 과 생 명 호 흡 주 _ 시 _  고 
  모 든  질 병 
  고 _ 쳐 _  주 니 무 한 감 사 합 니 다 
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  주 예 _ 수 의 밝 은 _ 빚 이 우 리 맘 에 비 _ 치 _ 사 
  밤 중 같 이 어 _ 둔 _ 것 을 낮 과 같 게 하 소 서 
  
  
}
verseFour = \lyricmode {
 \set stanza = "4." 
  성 령 _ 님 께 비 옵 _ 나 니 오 늘 우 리 생 _ 활 _ 을 
  맡 아 주 관 하 _ 여 _ 주 사 온 전 하 게 하 소 서 아 멘 
}
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" {  \voiceTwo \alto }
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
