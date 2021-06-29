\version "2.22.0"
\include "english.ly"

\header {
  title = "찬송가 82장. 성부의 어린 양이 "
}

global = {
  \time 6/4
  \key c \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
  \partial 4 g4
  
  g2 c4 d2 c4 c2. b2 a4 g2 g4 a2 f4 e2.~ e2  \bar "" \break
  
  g4 g2 c4 d2 c4 c2. b2 a4 g2 g4 a2 b4 c2. ~c2 \bar "" \break
  
  e,4 e2 a4 c2  b8( a) gs2. a2 a4 c2 a4 c2 d4 e2.~ e2 \bar "" \break
  
  g,!4 g2 c4 d2 c4 c2. b2 a4 g2 g4 a2 b4 c2.~ c2 
  
  
  
}

alto = \relative c' {
  \global
  \partial 4 e4 e2 e4 f2 e4 f2. g2 f4 e2 e4 d2 d4 c2.~ c2 
  
  e4 e2 e4 f2 e4 f2. g2 f4 e2 e4 d2 f4 e2.~ e2 
  
  c4 c2 e4 e2 e4 e2. e2 e4 e2 e4 f2 c'4 gs2.~ gs2 
  
  e4 e2 e4 f2 e4 f2. g2 f4 e2 e4 f2 f4 e2.~ e2 
  
}

tenor = \relative c' {
  \global
  \partial 4     
  c4 c2 g4 a2 g4 a2. c2 c4 c2 c4 b2 b4 g2.~ g2 
  
  c4 c2 g4 a2 g4 a2. c2 c4 c2 c4 b2 d4 c2.~ c2 
  
  c4 c2 c4 e2 d8( c ) b2. c2 c4 c2 c4 a2 a4  b2.~ b2 
  
  c4 c2 g4 a2 g4 a2. c2 c4 c2 c4 b2 d4  c2.~ c2 
  
}

bass = \relative c {
  \global
  \partial 4
  c4 c2 c4 c2 c4 f2. f2 f4 g2 g4 g,2 g4 c2.~ c2 
  
  c4 c2 c4 c2 c4 f2. f2 f4 g2 g4 g,2 g4 c2.~ c2 
  
  c4 a2 a4 a'2 a4 e2. a,2 a4 a'2 a4 f2 f4 e2.~ e2 
  
  c4 c2 c4 c2 c4 f2. f2 f4 g2 g4 g,2 g4 c2.~ c2 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  성 부 의   어 린   양 이   죄 지 고   가 시 니   내   몸 에   당 할   형 벌   다   대 신   하 셨 네 
내   죄 가   추 악 하 나   그   피 로   씻 으 면   눈   같 이   희 게   되 어   티   하 나   없 으 리 

}

verseTwo = \lyricmode {
  \set stanza = "2."
  내   죄 를   회 개 할   때   용 서 해   주 시 고   병 든   몸   고 쳐 주 사   새   생 명   주 시 네 
내   속 에   쌓 인   근 심   한 없 이   크 건 만   주   친 히   벗 겨 주 사   위 로 해   주 시 네 
  
}

verseThree = \lyricmode {
  \set stanza = "3."
내   주 를   의 지 하 니   내   맘 이   편 하 고   주   나 를   붙 드 시 니   내   앞 길   환 하 다 
임 마 누 엘   주   예 수   끝   없 는   그   사 랑   그   향 기   바 람 타 고   온   땅 에   퍼 지 네 

  
}
verseFour = \lyricmode {
  \set stanza = "4."
주   예 수   본 을   받 아   온 유 한   마 음 과   겸 손 한   마 음 으 로   섬 기 며   살 리 라 
나   주 의   뒤 를   따 라   저   천 국   이 르 러   천 사 의   노 래 따 라   주   찬 송 하 리 라 

  
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
