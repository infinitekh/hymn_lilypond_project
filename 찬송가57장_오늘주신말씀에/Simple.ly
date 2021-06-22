\version "2.22.0"
\header {
  title = "오늘 주신 말씀에"
  composer = "찬송가 57장"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }


}
\paper {
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
  
  system-system-spacing =
  #'((basic-distance . 15) 
     (minimum-distance . 12)
     (padding . 1)
     (stretchability . 12)) 

}
global = {
  \time 4/4
  \key e \minor
  \tempo 4=100
}

chordNames = \chordmode {
  \global
   e2 :m g d:7 g a:m g d1
   e2:m  b4 e:m  a2:7 d g a:7 d1
   g c2 d g1 c2 g
   d1 a:m7 g2 d:7 g4 d:7 g2 \bar "||" c g 
  
   
}

melody=  \relative c'' {
	\global 
	g4 g d' c b a g2 a4 e g g fis1  \break
	e4 e fis g a g fis2 g4 g fis e d1  \break
	g2 a4 b c b a2 b d4 c c b b2 \break
	d4 d c b a b c2 b4 b c a g fis g2 \bar "||" g g 
}

words = \lyricmode {
  오 늘 주 신 말 씀 에 새 힘 얻 어 서 
  세 상 으 로 나 가 서 살 아 갈 때 에 
  나 혼 자 힘 으 로 늘 부 족 하 오 니 
  주 여 나 를 도 우  사 승 리 하 게 하 소 서 
  아 멘 

  
}

\score {
  <<
  %  \new ChordNames \chordNames
    % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout {   indent = 0\cm}
  \midi { }
}
