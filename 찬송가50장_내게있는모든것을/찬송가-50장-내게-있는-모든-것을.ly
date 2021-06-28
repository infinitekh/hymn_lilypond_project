\version "2.22.0"
\include "english.ly"
\header {
  title = "내게 있는 모든 것을"
  composer = \markup {
    \huge "찬송가 50장"
  }
  poet = "(통71)"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

global = {
  \time 4/4
  \key d \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
 fs,4. fs8 g4 fs e4. e8 fs4 e d4.  d8 g4 fs e fs d2  \break 
 
 fs4. fs8 g4 fs e4. e8 fs4 e d4. d8 g4 fs e fs d2 \break
 
 d'4. cs8 b4 a g2. r4  cs4. b8 a4 g fs2. r4 \break 
 
 fs4. g8 b4 a d4. cs8 cs4 b a4. g8 fs4 e d2. r4 
 
 \bar "||"
 d2 d  \bar "|."
  
}

alto = \relative c' {
  \global
  d4. d8 d4 d   cs4. cs8 cs4 cs d4. d8 d4 d cs cs d2 
  
  d4. d8 d4 d cs4. cs8 cs4 cs d4. d8 d4 d cs cs d2 
  
  fs4. a8 g4 fs e2.    r4   e4. g8 fs4 e d2. r4 
  
  d4. e8 g4 fs fs4. a8 a4 g fs4. e8 d4 cs d2. r4 b2 a 
  
}

tenor = \relative c' {
  \global
  a4. a8 b4 a g4. g8 a4 g fs4. fs8 b4 a g a fs2 
  
  a4. a8 b4 a g4. g8 a4 g fs4. fs8 b4 a g a fs2 
  
  a4 r a r cs8 cs cs cs cs4 r a4 r a r a8 a a a a4 r 
  
  a4. a8 d4 d a4. d8 d4 d d4. a8 a4 g fs2. r4 g2 fs 
  
}

bass = \relative c {
  \global
  d4. d8 d4 d a4. a8 a4 a d4. d8 d4 d a a d2 
  
  d4. d8 d4 d a4. a8 a4 a d4. d8 d4 d a a d2 
  
  d4 r d r a8 a cs e a,4 r a4 r a r d8 d fs a d,4 r 
  
  d4. d8 d4 d d4. fs8 g4 g a4. a8 a,4 a d2. r4 g,2 d' 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
내 게 있 는 모 든 것 을 아 낌 없 이 드 리 네 

사 랑 하 고 의 지 하 며 주 만 따 라 살 리 라 

주 께 드 리 네 주 께 드 리 네 

사 랑 하 는 구 주 앞 에 모 두 드 리 네 아 멘 
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  내 게 있 는 모 든 것 을 겸 손 하 게 드 리 네 
  
  세 상 욕 심 멀 리 하 니 나 를 받 아 주 소 서 
  
  
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  내 게 있 는 모 든 것 을 주 를 위 해 드 리 네 
  
  주 의 성 령 충 만 하 게 내 게 내 려 주 소 서 
}

verseMen = \lyricmode { 
 _ _ _ _ _ _ _ _ _ _ _  _ _ 
 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ 
 _ _ 주 께 드 리 네 _ _  주 께 드 리 네 
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
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verseMen
    
  >>
  \layout { }
  \midi { }
}
