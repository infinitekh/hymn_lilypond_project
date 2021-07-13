\version "2.22.0"
\include "english.ly"
\header {
  title = "찬송가96장. 예수님은 누구신가"
}

global = {
  \time 4/4
  \key f \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  a4 a8 [ g ] f4 f g g a8 [[g ]f4 c' c8 [bf ]a4 a    g8 [f  ]g [a ]f2  \break 
  
  a4 a8 [bf ]c4 c d d c8 [bf ]a4 a a8 [bf ]c4 c d d c2   \break 
  
  a4 a8 [g ]f4 f g g4 a8 [g8 ]f4 c' c8 [bf ]a4 a g8 [ f ] g [ a ] f2  \bar "|."
  
}

alto = \relative c' {
  \global
  f4 f f f e e f ]f f f f f e8 d e4 f2
  
  f4 f f f f f f f f f f f f f f2 
  
  f4 f f f e e f f f f f f e8 [d ]e4 f2 
  
}

tenor = \relative c' {
  \global
  c4 c8 [bf ]a4 a c c c8 [bf ]a4 a a8 [g ]f4 c' bf8 [a ]bf [c ]a2 
  
  f4 f8 [g ]a4 a bf bf a8 [g ]f4 f f8 [g ]a4 a bf bf a2 
  
  c4 c8 [bf ]a4 a c c4 c8 [bf ]a4 a a8 [g ]f4 c' bf8 [a ]bf [c ]a2 
  
}

bass = \relative c {
  \global
  f4 f f f c c e f f f f f c c f2 
  
  f4 f f f bf, d f f f f f f bf, bf f'2 
  
  f4 f f f c c f f f f f f c c f2 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
 예 수 님 은   누 구 신 가   우 는 자 의   위 로 와 
없 는 자 의   풍 성 이 며   천 한 자 의   높 음 과 
잡 힌 자 의   놓 임 되 고   우 리   기 쁨   되 시 네 

  
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
 예 수 님 은   누 구 신 가   약 한 자 의   강 함 과 
눈 먼 자 의   빛 이 시 며   병 든 자 의   고 침 과 
죽 은   자 의   부 활   되 고   우 리   생 명   되 시 네 

  
}

verseThree = \lyricmode {
  \set stanza = "3."

 예 수 님 은   누 구 신 가   추 한 자 의   정 함 과 
죽 을 자 의   생 명 이 며   죄 인 들 의   중 보 와 
멸 망 자 의   구 원 되 고   우 리   평 화   되 시 네 

  
}
verseFour = \lyricmode {
  \set stanza = "4."


예 수 님 은   누 구 신 가   온   교 회 의   머 리 와 
온   세 상 의   구 주 시 며   모 든   왕 의   왕 이 요 
심 판 하 실   주 님   되 고   우 리   영 광   되 시 네 

  
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
  >>
  \layout { }
  \midi { }
}
