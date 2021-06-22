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


soprano = \relative c'' {
  \global
 \melody
  
}

alto = \relative c' {
  \global
 b4 b d e d fis d2 e4 c d d d 1 
 b 4 b dis b cis cis d2 d4 d cis cis a1 
 d4 ( b) d d e d d2 d g4 e e d d2 
 fis4 fis d d  e d e2 d4 d d c b c b2 c2 b2 
  
}

tenor = \relative c' {
  \global
    g4 g g g g c b2 a4 a g g  a1
    g4 g b b a a a2 g4 g a g fis1
    d2 g4 g g g fis2 g g4 g g g g2 
    a4 a a g a g a2 g4 g fis fis g a \stemUp g2 \stemNeutral e2 \stemUp d2 
  
}

bass = \relative c {
  \global
  g' 4 e b c d d g,2 c4 c b b d1 
  e4 e b e a, a d2 b4 b a a d1
  b4( g) g g c d d2 g, b4 c g' g g2 
  d4 d fis g c, b a2 d4 d d d d d \stemUp g,2\stemDown  c  \stemUp g 
  
}

verseOne = \words 

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
     \new ChordNames {  
      \set chordChanges = ##t
      \chordNames
     }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceOne \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceTwo \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
