\version "2.22.0"
\include "english.ly"
\header {
  title = "찬송가 330장. 어둔 밤 쉬 되리니"
}

global = {
  \time 4/4
  \key f \major
  \tempo 4=100
  \autoBeamOff
}

soprano = \relative c'' {
  \global
  a4 a8. bf16 c4 c d2 c f,4 f8. f16 f4 g a2. r4 \break
  
  c a8. bf16 c4 c d2 c f,4 g a g f2. r4 \break
  
  g g8. g16 g4 a bf4. ( a8 ) g2 a4 a8. a16 a4 b c2. r4  \break
  
  c a8. bf16 c4 c d2 c f,4 g a g f2. r4  \break 
  
}

alto = \relative c' {
  \global
 f4 f8. f16 f4 f f2 f f4 f8. f16 f4 e f2. r4 
 
 f f8. f16 f4 f f2 f f4 f f e f2. r4 
 
 e e8. e16 e4 f g4. ( f8 ) e2 f4 f8. f16 f4 f e2. r4
 
 f f8. f16 f4 f f2 f f4 f f e f2. r4 
 
 
  
}

tenor = \relative c' {
  \global
  a4 f8. g16 a4 a bf2 a a4 a8. a16 a4 c c2. r4 
  
  a f8. g16 a4 a bf2 a c4 d c bf a2. r4 
  
  c c8. c16 c4 c c2 c2 c4 c8. c16 a4 f g2.r4
  
  a f8. g16 a4 a bf2 a c4 d c bf a2. r4 
}

bass = \relative c {
  \global
  f4 f8. f16 f4 f f2 f f4 f8. f16 f4 c f2. r4 
  
  f f8. f16 f4 f f2 f a4 bf c c, f2. r4 
  
  c c8. c16 c4 c c2 c f4 f8. f16 f4 d c2. r4
  
  f f8. f16 f4 f f2 f a4 bf c c, f2. r4 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  어 둔   밤   쉬   되 리 니 
네   직 분   지 켜 서 
찬   이 슬   맺 힐   때 에 
일 찍   일 어 나 
해   돋 는   아 침 부 터 
힘 써 서   일 하 라 
일 할   수   없 는   밤 이 
속 히   오 리 라 


  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  어 둔   밤   쉬   되 리 니 
네   직 분   지 켜 서 
일 할   때   일 하 면 서 
놀 지   말 아 라 
낮 에 는   수 고 하 나 
쉴   때 도   오 겠 네 
일 할   수   없 는   밤 이 
속 히   오 리 라 

  
}

verseThree = \lyricmode {
  \set stanza = "3."
   어 둔   밤   쉬   되 리 니 
네   직 분   지 켜 서 
지 는   해   비 낀   볕 에 
힘 써   일 하 고 
그   빛 이   다 하 여 서 
어 둡 게   되 어 도 
할   수 만   있 는   대 로 
힘 써   일 하 라 
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
      \consists "Merge_rests_engraver"
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
      \consists "Merge_rests_engraver"
    } <<
      \clef bass 
      
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass 
      
      }
    >>
  >>
  \layout { }
  \midi { }
}
