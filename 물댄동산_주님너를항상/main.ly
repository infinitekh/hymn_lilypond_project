\header {
  title = "물댄동산"
  composer = "나강후"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  tagline=##f
}
\version "2.24.3"
\include "english.ly"
global = {
  \time 4/4
  \key g \major
  \tempo 4=80
}
chordI = \chordmode {
  g2 d/fs e:m e:m/d c g/d
  a:m d 
}
chordIIa = \chordmode { 
   d2
  g2 d/fs e:m e:m/d
  c a:m d1
}
chordIIb = \chordmode { 
  g2 d/fs
  e:m e:m/d c d g1
}
chordNames = \chordmode {
  \global 
  \repeat volta 2 \chordI  \partial 2  
 \chordIIa
 \chordIIb
}
melodyI =   \relative c' {
  d8 d d b16 d ~d8 d ~d4 e8 fs e b16 d ~d4 r8. 
  d16 e8 fs g e16 d ~d8 g ~g g16 g \break e8 fs g a16 a ~a4 r4
}
melodyIIa = \relative c'' {
   g8 a | \time 4/4  b b b b a4. fs8   g2. ~ g16 g fs g \break e8  g8 b(  a~ a4 ) a8  g16 a ~a2.
}
melodyIIb = \relative c'' {
      g8 a b[ b ]b b a4. fs8 \break g2. ~g16  g fs g e8 g b (a ~a4 ) g8 fs16 g ~g1 \bar "|." 
}
melody = \relative c' {
  \global
 % d8 d d b16 d ~d8 d ~d4 e8 fs e b16 d ~d4 r8. 
 % d16 e8 fs g e16 d ~d8 g ~g g16 g \break d8 fs g a16 a ~a4 
 \repeat volta 2 \melodyI  \partial 2  r4 
 \melodyIIa
 \melodyIIb
}

words = \lyricmode {
  주 님 너 를 항 __ 상 __ 인 도 하 시 리 __  
  메 마 른 땅 에 서 __ 도 __ 너 를 만 족 시 키 리 __ 
  너 는 물 댄 동 산 같 겠 고 __ 마 르 지 않 는 샘 __ __ 같 으 리  __
  너 는 물 댄 동 산 같 겠 고 __ 마 르 지 않 는 샘 __ __ 같 으 리  __ 
  
}

\score {
  <<
    \new ChordNames \chordNames
    %\new FretBoards \chordNames \with { 
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { }
  \midi { }
  }
\paper{
  #(set-paper-size "a5")
  indent =  #0
 ragged-bottom = ##t 
}