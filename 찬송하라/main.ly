\version "2.24.3"
\include "english.ly"
\header {
  title = "찬송하라"
  tagline= ##f
}

global = {
  \time 4/4
  \key e \major
  \once \omit 	Score.MetronomeMark
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  e1*3 b1*2  :7 
  fs1:m b:7 e1*3 e1:7 a
  a:m6/c e/b b:7 e
  
}

melody = \relative c'' {
  \global
  r4 gs gs fs8 e ~e1 ~e4 e8. e16 e8. e16 ds8. e16 fs1 
  \break
  r4 a a gs8 fs ~fs1 ~fs4 fs fs8. fs16 e8. fs16 gs1 \break
  r4 b b a gs1 ~gs4 gs8. gs16 fs8 gs4 a8 ~a1 \break
  r4 a e fs8 gs~ gs1 ~gs4 b, ds fs8 e8 ~ e1  \bar "|."
}

words = \lyricmode {
  찬 송 하 \markup{ 라 \super "*"} 여 호 와 의 종 들 아 
  주 님 집 에 서 있 는 자 들 아 
  성 소 향 해 손 을 들 고 서 
  찬 송 하 라 찬 송 하 라 
  
}

\score {
  <<
    \new ChordNames \chordNames
 %   \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { indent = #0 }
  \midi { }
}

\markup {
  % 악보 하단에 주석을 추가합니다.
  \fill-line{ 
    ""
  \column {
    \line { \fontsize #+1  { "1. 찬송하라," \hspace #1 "2. 송축하라" } }
  }
  ""
  }
}
\paper {
  #(set-paper-size "a5")
}