\version "2.22.0"

\header {
  title = "기뻐하며 경배하세"
}

global = {
  \time 4/4
  \key g \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
  b b c d d c b a g g a b b4. a8 a2 \break
  b4 b c d d c b a g g a b a4. g8 g 2 \break 
  a4 a b g a b8(  c)  b4 g a b8( c) b4 a g a d, b' ~ \bar "|"  \break 
   b b c d d c b c8( a) g4 g a b a4. g8 g2 \bar "||" g g  \bar "|."
}

alto = \relative c' {
  \global
  d4 d d d d d d d d d d d d4. d8 d2 
  d4 d e f f e e e d d fis g fis4. d8 d2 
  fis4 d d g fis d d d fis g8 fis fis4 dis e8 d cis4 d d   ~
  d4 d e f f e e e d d fis g fis4. d8 d2 e d 
  
}

tenor = \relative c' {
  \global
  g4 g a b b a g fis g g fis g g4. fis8 fis2 
  g4 g g a8 b b4 c d c d b c d c4. b8 b2 
  a4 fis g b d g,8 a g4 b d b8 a b4 b b a8 g fis4 g ~
  g g g a8 b b4 c d c d b c d c4. b8 b2 c b 
  
}

bass = \relative c {
  \global
  
  g'4 g g g  d d d c b b a g d'4. d8 d2 
  g4 g g g  g a b c b g d d d4. g,8 g2 
  d'4 d d d d d d d d d dis b e a, d  g, ~
  g g' g g g a b a8 c b4 g d d d4. g,8 g2 c g 
}

verseOne = \lyricmode {
  \set stanza = "1."
  기 뻐 하 며 경 배 하 세 영 광 의 주 하 나 님 
  주 앞 에 서 우 리 마 음 피 어 나 는 꽃 같 아 
  죄 와 슬 픔 사 라  지 고 의 심 구 름 걷 히 니 변 
  함 없 는 기 쁨 의 주  밝 은 빛 을 주 시 네 
}

verseTwo = \lyricmode {
  \set stanza = "2."
  땅 과   하 늘   만 물 들 이   주 의   솜 씨   빛 내 고 
별 과   천 사   노 랫 소 리   끊 임 없 이   드   높 아 
물 과   숲 과   산 과   골 짝   들 판 이 나   바 다 나 

모 든   만 물   주 의   사 랑   기 뻐   찬 양   하 여 라 


  
}

verseThree = \lyricmode {
  \set stanza = "3."

  우 리   주 는   사 랑 이 요   복 의   근 원 이 시 니 
삶 이   기 쁜   샘 이   되 어   바 다 처 럼   넘 치 네 
아 버 지 의   사 랑   안 에   우 리   모 두   형 제 니 

서 로   서 로   사 랑 하 게   도 와 주 시 옵 소 서 


}
verseFour = \lyricmode {
  \set stanza = "4."
새 벽 별 의   노 래   따 라   힘 찬   찬 송   부 르 니 
주 의   사 랑   줄 이   되 어   한   맘 되 게   하 시 네 
노 래 하 며   행 진 하 여   싸 움 에 서   이 기 고 

승 전 가 를   높 이   불 러   주 께   영 광   돌 리 세   아 멘 

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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
