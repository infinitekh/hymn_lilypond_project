\version "2.22.1"
\include "english.ly"
\header {
  	title = "주의 십자가 보혈 아니면"
  	%subtitle = "아무도 예배하지 않는"
  tagline = "Sheet music notated in Lilypond by Kim Hyeok."
  composer  = \markup{
    {\italic "Words of Music by"}
    {\bold "김석균"}
  }
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  indent = 0.0
    ragged-last = ##f
  \context {
    \Score
    \remove "Bar_number_engraver"
    \remove "Volta_engraver"
  }
 % \context {
  %  \Voice
   % \consists "Melody_engraver"
  %  \override Stem #'neutral-direction = #'()
  %}
}



chordNames = \chords {
  \partial 8 
	s8 f1 bf c:7 f2 f:7
	bf1 f c:7 f2 f:7

f1 bf c:7 f2 f:7
	bf1 f c:7 f2 f:7
	
f1 bf c:7 f2 f:7   f1 bf c:7 f2 f:7

	bf1 f c2 c:7 f2 f:7
		bf1 f c:7 f2 f:7

	


}  

melody = \relative c' {
  \key f \major
  \time 4/4
  \tempo "Adagietto" 4=69

  \partial 8 
	a16 bf | c8 f16 f16 ~f4 f8 a, c bf16 bf ~bf2. r8 f'16 f e8 g ~g g e c bf c16 a ~a2. r8  \break 
 
	c16 c | c8 f16 f16 ~f4 g8 f e d16 c ~c2. r8 
	f16 f | e8 g ~g g g c, d e16 f~ f2. r8  \break 

	a,16 bf | c8 f16 f16 ~f4 f8 a, c bf16 bf ~bf2. r8 f'16 f e8 g ~ g g e c bf c16 a~ a2. r8 \break
	
	c16 c | d8 f16 f16~ f4 g8 f e d16 c~ c2. r8     
	f16 f | e8 g~ g g g c, d e16 f~ f2.   \break

	c8 f \bar "||"^\segno  a2 a     | g8 f f d16 c ~c4  e8 f16 g ~g2. f8 g16 a ~a2.     \break
	c,8 f a2 a     | g8 f f d16 c ~c4  e8 f g4 bf8 bf a4 g f2.  \fine
	\bar "|."   
	
	
f8 f | bf8 bf16 bf ~bf4 bf8 bf c bf16 a ~a2. a8 a g g ~g g bf a g f16 a ~a2.\break

f8 f | bf8 bf16 bf ~bf4 bf8 bf c bf16 a ~a2. a8 a g g ~g g bf a g e16 f ~f2. c8 f^\markup {
  \italic "D.S. "
  \tiny \raise #1
  \musicglyph "scripts.segno"
}
\bar "|." 

}
verseOne = \lyricmode {
	 주 의   십 자 가 보 혈 아 니 면 내 가 어 찌 죄 사 함 받 으 며 
	 주 의 십 자 가 보 혈 아 니 면   내 가 어 찌 구 원 을 받 으 랴 

	 주 의 십 자 가 보 혈 아 니 면   내 가 어 찌 주 의 자 녀 되 며 
	 주 의 십 자 가 보 혈 아 니 면   내 가 어 찌   영 생 을 얻 으 랴 

	 주 의 보 혈 능 력 있 도 다   주 의 피   믿 으 오 
	 주 의 보 혈 그 어 린 양 의 매 우 귀 중 한 피 로 다 

	 주 의   십 자 가 보 혈 아 니 면 내 가 어 찌 죄 사 함 받 으 며 
	 주 의 십 자 가 보 혈 아 니 면   내 가 어 찌 구 원 을 받 으 랴 
	 주 의 
 }
verseTwo = \lyricmode {
	 주 의 은 혜 가 아 니 고 서 야 내 가 어 찌 죄 사 함 받 으 며 
	 주 의 은 혜 가 아 니 고 서 야 내 가 어 찌 구 원 을 받 으 랴 

	 주 의 은 혜 가 아 니 고 서 야 내 가 어 찌 주 의 자 녀 되 며 
	 주 의 은 혜 가 아 니 고 서 야 내 가 어 찌 영 생 을 얻 으 랴 

	 주 의 은 혜 풍 성 하 도 다 넓 고 도 깊 도 다 
	 주 의 은 혜 한 량 없 도 다 매 우 높 랍 고 크 도 다 

 }
 \score {
  <<
    \new ChordNames \chordNames
    \new Staff \with {
        \consists "Volta_engraver"
    }
    { \melody }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
  >>
  \layout {
 
 }
   \midi {
    \tempo 4=69
  }
}

