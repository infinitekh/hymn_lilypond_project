\version "2.22.1"
\include "english.ly"
\header {
  title = "예배자"
  subtitle = "아무도 예배하지 않는"
  tagline = "lilypond by KIM Hyeok"
  poet   = "설경욱"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key a \major
  \time 4/4 
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \partial 4 s4 | 
  \repeat volta 2 {  a1 e d2 e a1 |\break
  cs2 cs:7 | fs2:m  fs:m7 b:m e } 
  \alternative { 
  {a2 e:7}
  {a2 e4/d e     }
  }
  a1 e/gs |\break
  fs:m cs d2 e:7 |\break
  cs2:m fs:m d e a1 \bar "|."
  
}

melody = \relative c' {
  \global
  % Music follows here.
 \partial 4 cs8 d  \repeat volta 2 { e2 e8 d cs d fs e16 e e4 r8. e16 b'8 gs16 a  a4.  fs16 gs a8 gs fs gs16 e e2 r4  cs8 d |  \break 
     cs2 cs8 es gs b b a16 16 a4 r8. gs16 a8 cs,16 d | d4 r16 d e fs a8 gs fs gs16 a  
 }
  \alternative { 
  {a2 r4 cs,8 d \break }
  {a'2   }
  }
   r4 e16 d cs d | fs8 e16 e e2 e16 d cs d |
   fs8 e e cs16 e e4. fs16 gs | \break
   a8 gs16 a a4 r8 fs16 gs a8 b | 
   cs d16 cs cs2 r8 cs16 b |
   b8 a16 a a8 fs16 gs a8 gs gs fs| \break
   e8 e fs gs16 a a4. fs16 gs | a8 gs16 a a4 a8 gs fs gs16 a |  a2. \bar "|."
   
  
}

verse = \lyricmode {
  % Lyrics follow here. 
  아 무  도 예 배 하 지 않 - 는 - 그 곳 에 서 - 주 를 예 배 하 리 라 - 
  아 무 도 찬 양 하 지 않 - 는 - 그 곳 에 서 - 나 주 를 찬 양 하 리 라 - 누 구  
 
  - 내 가 밟 는 모 든 땅 - 주 를 예 배 하 게 하 소 서 - 주 의 보 혈 로 - 덮 어 지 게 하 소 서 - 내 가 선 이 곳 - 주 의 거 룩 한 곳 되 게 
  하 소 서 - 주 의 향 기 로 - 물 들 이 소 서 -
}
verseTwo = \lyricmode {
  % Lyrics follow here. 
  _ _ 도 헌 신 하 지 않 - 는 - 그 곳 에 서 - 주 께 헌 신 하 리 라 -
  누 구 도 증 거 하 지 않 - 는 - 그 곳 에 서 - 나 주 를 증 거 하 리 라  -
}
\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verse }
    \addlyrics { \verseTwo }
  >>
  \layout { indent = 0.0
    ragged-last = ##f}
  \midi {
    \tempo 4=69
  }
}
