\version "2.22.0"
\include "english.ly"
%\consists "Merge_rests_engraver"
\header {
  title = "407. 구주와 함께 나 죽었으니"
}

global = {
  \time 3/4
  \key f \major
  \tempo 4=100
}

soprano = \relative c' {
  \global
  c f g a a a bf f g a2 r4 a g fs g a g f e4. d8 g 2. \break	
  
  c,4 f g a a a bf bf b c 2 r4 c bf a d, g 8 \fermata  r8 f4 e a4. g8 f2. \break	
  
  a4 bf c a g f e4. f8 g4 a 2 r4 a bf c a g f d4. e8 f4 g2.  \break	
  
  c,4 f g a a a  d d 4. c8 bf2 r4 bf a g d g8  \fermata  r8 f4 e a4. g8 f2. \bar "||" f f \bar "|."
  
}

alto = \relative c' {
  \global
 c4 c c f f f f f f f2 r4 e e ds e e e c b4. b8 c2. 
 
 c4 c c f f f f f f f2 r4 ef ef ef d d8 r d4 c e4. e8 c2. 
 
 f4 g a f c c c4. d8 e4 f2 r4 f f f f e d b4. c8 d4 e2. 
 
 c4 c c f f g fs fs4. a8 g2 r4 d d d d d8 r d4 c e4. c8 c2. d c 
  
}

tenor = \relative c' {
  \global
  a4 a bf c c cs d d d c2 r4 c bf a bf c bf a af4. af8 g2 ( bf4   )
  
  a4 a bf c c c bf bf gs a2 r4 a g f g g8 r g4 g c4. bf8 a2. 
  
  c4 c c c bf a g4. c8 c4 c2 r4 c g a c bf a g4. g8 g4 g2 ( bf4   )
  
  a4 a bf c c c a a4. d8 d2 r4 bf c bf g g8 r g4 g  c4. bf8 a2. bf a 
  
}

bass = \relative c {
  \global
 f4 f f f f f f f f f2 r4 c c c c c c f f4. f8 e2. 
 
 f4 f f f f ef d d df c2 r4 f f f bf, bf8  \fermata  r b4 c c4. c8 f,2. 
 
 f'4 f f f f f c4. c8 c4 f2 r4 f f f f c d f4. e8 d4 c2. 
 
 f4 f f f f ef d d4. d8 g2 r4 g, a bf bf bf8 \fermata r b4 c c4. c8 f,2. bf f 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
 구 주 와 함 께 나 죽 었 으 니 구 주 와 함 께 나 살 았 도 다 
 
 영 광 의 그 날 에 에 르 도 록 언 제 나 주 만 바 라 봅 니 다 
 
 언 제 나 주 는 날 사 랑 하 사 언 제 나 새 생 명 주 시 나 니 
 
 영 광 의 그 날 에 이 르 도 록 언 제 나 주 만 바 라 봅 니 다 
  
  아 멘 
}

verseTwo = \lyricmode {
  \set stanza = "2."
맘 속 에   시 험 을   받 을 때 와 
무 거 운   근 심 이   있 을 때 에   
주 께 서   그 때 도   같 이 하 사   
언 제 나   나 를   도 와 주 시 네 

  

}

verseThree = \lyricmode {
  \set stanza = "3."

 뼈 아 픈   눈 물 을   흘 릴 때 와   
쓰 라 린   맘 으 로   탄 식 할 때 
주 께 서   그 때 도   같 이 하 사 
언 제 나   나 를   생 각 하 시 네 


  
}
verseFour = \lyricmode {
  \set stanza = "4."
  
낸 몸 의   약 함 을   아 시 는 주 
못 고 칠  질 병 이   아 주 없 네 
괴 로 운   날 이 나   기 쁜 때 나 
언 제 나   나 와   함 께   계 시 네 
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists "Merge_rests_engraver"
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
      \consists "Merge_rests_engraver"
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
