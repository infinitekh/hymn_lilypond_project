\version "2.22.0"
\header {
  title = "주 이름으로 모였던"
  composer = "찬송가 55장"
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
  \key bes \major
  \tempo 4=100
}

chordNames = \chordmode {
  \global
 % \partial 4 s4 |
  bes2 es bes4 f bes1 es4 g:7 c2 f4 f:7 
  bes2 es bes4 f:7 g2:m f f4:7 f bes1 
  \bar "||" es2 bes
   
}

melody=  \relative c' { 
	%\partial 4 d8. e16   |    f4. f8 f e d e | d4 g,2 d'8 f | a4 a a8 g f g | f2.   \bar ""\break
  \global      f4 f8 f g4 g f f f2 f4 bes8 a g4 g g  c8 bes a4 g8 f \fermata  \break
        f4 f8 f g4 g f es d2 f4 f8 f f4 f f2. r4 \bar "||" g2 f2 
}

soprano = \melody

alto = \relative c' { 
	%\partial 4 d8. e16   |    f4. f8 f e d e | d4 g,2 d'8 f | a4 a a8 g f g | f2.   \bar ""\break
  \global      d4 d8 d es4 es d c d2 d4 d8 f es4 f e  e f4 es4  \fermata  \break
        d4 d8 d es4 es d c bes2 c4 c8 d es4 c d2. r4 \bar "||" es2 d2 
}

words = \lyricmode {
  주 이 름 으 로 모 였 던 우 리 가 지 금 헤 어 _ 질 때 _ 
  언 제 나 함 께 하 시 며 평 안 케 하 소 서 아 멘 

  
}

\score {
  
    %  \new ChordNames \chordNames
    % \new FretBoards \chordNames
    \new ChoirStaff <<
      \new Staff << 
        \new Voice = "soprano" <<
          \voiceOne \melody 
        >>
          \new Lyrics \lyricsto "soprano" { \words }
         \new Voice = "alto"  << 
          \voiceTwo \alto
         >>
      
      >>
    >>
  
  \layout {   indent = 0\cm}
  \midi { }
}
