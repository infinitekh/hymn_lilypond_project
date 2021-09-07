\version "2.22.0"
\include "english.ly"
\header {
  title = ""
}

global = {
  \time 4/4
  \key ef \major
  \tempo 4=100
  \autoBeamOff
  \stemNeutral
}

soprano = \relative c' {
  \global
      \stemUp
   ef4 ef8 ef  g4 g c2. c4 bf ef, af g f2.  \bar "" \break
   
   f4 g bf c bf   a  g8 [ f] bf4  ef  d ef c c bf2.  \bar "" \break
   
   bf4 bf g f ef c'2. c4 c a g \stemDown f \stemUp d'2. \bar "" \break
   
   d4 ef4. d8 c4 bf af f g bf af g f f \shiftOn ef1 \shiftOff  \bar "||" af2 g  \bar "|."
  
  
}

alto = \relative c' {
  \global

  bf4 bf8 bf ef4 ef ef2. ef4 ef ef d ef d2. \bar "" \break
  
  d4 ef f ef ef c \stemDown c \stemNeutral f ef  f g f ef d2. \bar "" \break
  
  d4 ef ef d ef ef2. e4 f f ef! f f2.\bar "" \break
  
  f4 \stemDown ef4 ef \stemNeutral ef4 ef ef d ef ef ef ef \stemDown ef \stemNeutral d ef1 \stemUp ef2 ef
  
}

tenor = \relative c' {
  \global
  g4 g8 g g4 g af2. af4 bf c a bf bf2. 
  
  bf4 bf bf g g a a bf a bf bf bf a bf2. 
  
  bf4 bf bf af bf  c2. bf4 a c bf c bf2. 
  
  bf4 bf4 bf4 af bf c bf bf bf c bf bf4. af8 g1 \stemDown  c2 bf 
  
}

bass = \relative c {
  \global
  ef4 ef8 ef c4 c af2. a'4 g a f ef bf2. 
  
  bf4 ef d c ef f ef d c bf ef f f bf,2. 
  
  af'4 g ef f g af2. g4 f f g a bf2. 
  
  af4 g g af g f bf ef, g, af ef' bf4 bf ef1  af,2 ef' 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  면 류 관 벗 어 서 주 앞 에 드 리 세 
  저 천 사 기 쁜 노 래 가 온 땅 에 퍼 지 네 
  내 혼 아 깨 어 서 주 찬 송 하 여 라 
  온 백 성 죄 를 속 하 신 만 왕 의 왕 일 세 
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  ha
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  ho
  
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
