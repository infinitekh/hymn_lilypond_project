\version "2.22.0"
\language "english"
\include "articulate.ly"
\include "swing.ly"
\header {
  title = "주 나를 광야로 이끄실 때"
  composer = "정요한"
  tagline = "Lilyponded by KIM Hyeok"
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
  \key d \major
  \time 4/4
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  \partial 8.  
  d8. | \repeat volta 2 {   d2 e:m7 fs:m7   
   b:m7 g g/a d g/a d g:m7/b fs/as b4:m7 d:m7/a g d/fs e a:7                                      
  }
  \alternative{
   {d2 g/a}
   {d2 g/a}
  }
  d2 g/fs g1      e2:m7 e4:m6 e:m7 g2/a a4 a/g d1/fs a2/g g e:m7 a:7 d2.
}

melody = \relative c' {
  \global
  % Music follows here.
 \partial 8.  a16 d e  |
   \overrideTimeSignatureSettings
      4/4        % timeSignatureFraction
      1/4        % baseMomentFraction
      1,1,1,1        % beatStructure
      #'()       % beamExceptions
 \repeat volta 2 {
    fs8 fs16 fs8. fs16 fs8. g16 e8. cs16 d e8 e16 e8. e16 e8. fs16 d16 ~ d4 |  \break 
    d8 d16 d8. d16 d8. cs16 b8. a16 a ~a2. r16 
    a16 d e     fs8 fs16 fs8. fs16 fs8. g16 e~ e4  \break 
    e8 e16 e8. e16 e8. fs16 d16 ~ d8. b16 d8 d16 d8. d16 d8. cs16 b8 cs16 ( d ) d16   ~ 
   
  } 
  \alternative{
    { d2.   r16   a16 d e   }
    { d2 fs4 g  }
  } 
   a4. ~ (  a16 d,16 ) d2 a'8. g16 ~g fs8 g16 ~g2 \break 
  b8 b16 b ~b8 b16 b ~b8 a16 g ~g fs8. fs4 ~ (fs16 g )a8 fs16 ~e8. fs8 g a4 ~(a16 d, d8 ) d4.  d8  \break 
  cs'4 b8 b ~ b4. r 16 b16 a8 g16 fs ~fs  fs8. e4 e8. d16 d2. r16  \bar "|."
  
}

verse = \lyricmode {
  % Lyrics follow here.
 주 나 를 광 야 로 이 끄 실 때 
기 쁨 으 로 나 아 가 리 라 
신 실 하 신 주 를 신 뢰 해 
사 망 의 음 침 한 골 짜 기 도 
나 는 두 렵 지 않 네 
주 나 와 항 상 함 께 하 시 네 

주 나 를
-
주 는 나 의 모 든 필 요 
주 가 나 의 푸 른 초 장 되 시 네 
주 님 안 에 나 거 하 리 
그 곳 이 내 가 숨 쉬 는 곳 


}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff {  \melody }
    \addlyrics { \verse }
  >>
  \layout { }
  \midi {
    \tempo 4=63
  }
}
