\version "2.22.0"
\header {
  title = "즐겁게 안식할 날"
  composer = "찬송가 43장"
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
  \key d \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
  \partial 4 s4 |
  d2 g:maj d1 d2 g d1 
   d2 g:maj d1 d2 g d1 
   g1 fis2:m7 b:7 e:m7 a:7 d1
   g1 fis2:m7 b:7 e:m7 a:7 d2 a:7
   
}

melody=  \relative c' {
	\partial 4 d8. e16   |    f4. f8 f e d e | d4 g,2 d'8 f | a4 a a8 g f g | f2.   \bar ""\break
	d8. e16   |    f4. f8 f e d e | d4 g,2 d'8 f | a4 a a8 g f g | f2.  \bar "" \break
	a4       | b4. b8 b4 b | a f2 a4 | a g8 f g4 a | f2. \bar "" \break
	a4       | b4. b8 d4 b | a f2 a4 | a f8 a a g f e  | d2.  \bar "|."
}

words = \lyricmode {
  즐 _ 겁 게 안 _ 식 _ 할 날 
  반 _ 갑 고 좋 _ 은 _  날  
  내 _  맘 을 편 _  케 _ 하 니  
  즐 _ 겁 고 기 _ 쁜 _ 날  
  이 날 에 천 하 만 민 다 보 좌 _ 앞 에 서  
  참 되 신 삼 위 일 체 다 찬 송 _ 부 _ 르 _ 네 
  
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
