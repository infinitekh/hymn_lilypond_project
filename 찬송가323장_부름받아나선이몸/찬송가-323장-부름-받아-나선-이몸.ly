\version "2.22.0"
\include "english.ly"
\header {
  title = "부름 받아 나선 이몸"
  composer = "찬송가 323장"
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
  \time 3/4
  \key g \major
  \tempo 4=100
}

chordNames = \chordmode { \transpose g af{
  \global
  g2. d4:7 e2:m g4 d2       a4:7 d2:7
  
  g4 d2 g2. c4 d2 a4:7 d2 
  
  g2. d4:7  \tuplet 2/5 {  g2 } d
  
  g1 c2 g2. d4:7 g2 c2. g2.   
  
                          }
}

melody=   \transpose g af {
  \relative c' { 
    \global
    \autoBeamOff
	   d8. g16 b4 b \tuplet 3/2 { c8 b a } g2  g8. b16 a4. g8 \tuplet 3/2 { fs g e } d2  \break
	   
	   d8. g16 a4 a g8. a16 b4 g c8. b16 a4. a8 \tuplet 3/2 { b b a } d2 \break
	   
	   d8. c16 b4 b a8. c16 b4 g g8. a16 b4. b8 a8. g16 a4 a \break
	   
	   b8. d,16 e4 d \tuplet 3/2 { g8 a b } c2 
	   
	   b8. c16 d4. g,8 \tuplet 3/2 { a b a } g2   \bar "||"
	   
	   g2. g \bar"|."
	  }

}

words = \lyricmode {
  부 름 받 아 나 선 이 몸 어 디 든 지 가 오 리 다 
  
  괴 로 우 나 즐 거 우 나 주 만 따 라 가 오 리 니 
  
  어 느 누 가 막 으 리 까 죽 음 인 들 막 으 리 까 
  
  어 느 누 가 막 으 리 까 죽 음 인 들 막 으 리 까 

  아 멘
}

\score {
  <<
    \new ChordNames \chordNames
    % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout {   indent = 0\cm}
  \midi { }
}
