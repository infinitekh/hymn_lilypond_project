\version "2.22.0"
\include "english.ly"
\header {
  title = "찬송가95장. 나의 기쁨 나의 소망되시며"
}

global = {
  \time 4/4
  \key d \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
  \partial 4     d,4 d4. ( e8 ) fs4 g a4. ( b8 ) a4 g fs2 e4 e d2. a'4 d2 d4 e d2 b4 b a2.  \bar "" \break
  
  a4 d2 d4 b a2 fs4 a b2 a4 fs e2 d4 ( fs ) a4. ( b8 ) a4 d, fs2 e4 e \partial 2. d2. \bar "||" d2 d  \bar "|."
  
  
}

alto = \relative c' {
  \global
 d4 d4. ( cs8 ) d4 e fs4.( g8 ) fs4 e  d2 cs4 cs d2. fs4 fs2 fs4 g fs2 e4 d cs2. 
 
 fs4 fs2 fs4 g fs2 d4 d d2 d4 d cs2 d2 fs4. ( g8 ) fs4 d d2 cs4 cs d2. b2 a
  
}

tenor = \relative c' {
  \global
  fs,4 fs4. g8 a4 a d2 d4 b a2 a4 g fs2. a4 a2 a4 a a2 a4 gs a2. 
  
  a4 a2 a4 d d2 a4 d d2 d4 a a2 fs4 ( a4 ) d2 d4 a a2 a4 g fs2. g2 fs 
  
}

bass = \relative c {
  \global
  d4 d4. d8 d4 d d2 d4 g, a2 a4 a d2. d4 d2 d4 cs d2 e4 e a,2.
  
  d4 d2 d4 d d2 d4 fs g2 fs4 d a2 d2 d2 d4 fs a2 a,4 a d2. g,2 d' 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
 나 의   기 쁨   나 의   소 망   되 시 며   나 의   생 명 이   되 신   주 
밤 낮   불 러 서   찬 송 을   드 려 도   늘   아 쉰   마 음   뿐 일 세 

  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  나 의   사 모 하 는   선 한   목 자 는   어 느   꽃 다 운   동 산 에 
양 의   무 리 와   늘   함 께   가 셔 서   기 쁨 을   함 께   하 실 까 


  
}

verseThree = \lyricmode {
  \set stanza = "3."
길 도   없 이   거 친   넓 은   들 에 서   갈   길   못   찾 아   애 쓰 며 
이 리 저 리 로   헤 매 는   내   모 양   저   원 수   조 롱 하 도 다 


  
}
verseFour = \lyricmode {
  \set stanza = "4."
 주 의   자 비 롭 고   화 평 한   얼 굴   모 든   천 사 도   반 기 며 
주 의   놀 라 운   진 리 의   말 씀 에   천 지 가   화 답 하 도 다 


  
}
verseFive = \lyricmode {
  \set stanza = "5."
 나 의   진 정   사 모 하 는   예 수 님   음 성   조 차 도   반 갑 고 
나 의   생 명 과   나 의   참   소 망 은   오 직   주   예 수   뿐 일 세   아 멘 
  
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
   \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
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
