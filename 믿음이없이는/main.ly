\version "2.24.3"
\include "english.ly"
\header {
  title = "믿음이없이는"
  tagline = ##f
  composer = "장진숙"
  maintainer = "kh (ekh0324'at'gmail.com)"
}

global = {
  \time 4/4
  \key g \major
  \tempo 4=60 
}

chordNames = \chordmode {
  \global
 %G       D/F#      C/E    G/D      C        D7        Bm
  g2 d/fs c/e g/d c d:7 b1:m
  c2 d/c b:m7 e:m a:m a/cs d2.:7
  d4 c2 b:m e:m g4/d g/b c2 g/b
  a:m7 cs:dim^7 d1:sus4 d
  g2 b:m7 a:m7 
  a:m7+ d:7 d:7/fs g2. g4/fs 
  
  b2.:m7 g4/d c2.:2 g4/b a2:m7 d:7 g1
}

melody = \relative d'{
  \global
  d8 d8 ~ d8. d16 e8 d16 d16 ~ d4 |c8[ b ] c [ d ] d4 r8 g, |
  e' e ~ e e e d d c16 d ~ d2. \break
  
r8  d8  | e8  e16 e ~e8 fs8 fs4. d8 | d8 d16 d ~d8 g g4. fs8 | e8 e16 e ~e4 e8 e e d16 d  ~ d2.
\break
r8 d16 d| d8 d16 d ~d8 g g a16 a ~a8 fs g8 g g b b g16 g ~g8 d16 d e8 g16 g ~g16 b8 b16 ]  ~b4
\break

e,16 fs g a b8 a16 a ~a8. e16 g8 e g b b4. a8 a2~ a4 
\break
r8. d,16 g8[ fs] g d' d4. b16 c d8 d16 d ~d8 b b8. c16 ~c4
\break
b8 b b a16( c ) c4. d,8 d d16 d16 ~ d [ c'8 b16 ] ~ b4
\break
r8. fs16 g8 [fs ]g d' d4. r16 g,16 g8 fs g d' d c16 c16 ~ c16 [ b8 c16 ] ~c4 r8 a16 b b8 c16 c16 c4 b8 a a g g2. r4

}

words = \lyricmode {
  \override Lyrics.LyricText.font-size = #2

    주 님   내   마 음 이   너   무   둔   해 서   주   님 을   볼   수   없 습 니 다 
	 이   땅 에   속 하 여   이 땅 만 보 다 가   주 님 손 을   놓 쳤 습 니 다 
	 나 는   나 그 네 로   왔 는 데   왜 주 저 앉 게 되 었 나   나 는 청 지 기 인 데 
	 언 제 부 터 내 삶 의   주 인 이   되 어   버   렸 나 
	 믿 음 이   없 이 는   기 쁘 시 게   못 하 나 니 

  \set stanza = #"1."  { 고 된 수 고 도   다   헛 될 뿐 이 라  }
	
	 
	 믿 음 이 없 어 서   무 너 진 삶 의   모 든 자 리 에   다 시   주 님 을   기 다 립 니 다 

}
wordsTwo = \lyricmode {
   _ _   _   _ _ _   _   _   _   _ _   _   _ _   _   _   _ _ _ _ 
	 _   _ _   _ _ _   _ _ _ _ _ _   _ _ _ _   _ _ _ _ _ 
	 _ _   _ _ _ _   _ _ _   _ _ _ _ _ _ _ _   _ _ _ _ _ _ _ 
	 _ _ _ _ _ _ _   _ _ _   _ _   _   _ _ 
	 _ _ _   _ _ _   _ _ _ _   _ _ _ _ 
	   \override Lyrics.LyricText.font-size = #2

\set stanza = #"2."  주 를   찾 는 자   반 드 시   만 나 리   	 
	 _ _ _ _ _ _   _ _ _ _ _   _ _ _ _ _   _ _   _ _ _   _ _ _ _ _ 
 
}

\score {
  <<
    \new ChordNames {
      \set Staff.midiInstrument = "string ensemble 1"
      \transpose c c, {
      \chordNames
      }
    }
  %  \new FretBoards \chordNames
    \new Staff { 
      \set Score.tempoHideNote= ##t
      \set Staff.midiInstrument = "acoustic grand"
         \melody 
    }
    \addlyrics { \words }
    \addlyrics { \wordsTwo }
  >>
  \layout {
  indent = #0
 
  }
  \midi { }
}
\paper{
  paper-width = 180\mm
}
