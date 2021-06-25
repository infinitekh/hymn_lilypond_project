\version "2.22.0"

\header {
  title = "찬송가 69장 온천하 만물 우러러"
}

global = {
  \time 3/2
  \key d \major
  \tempo 2 =100
}

soprano = \relative c'' {
  \global
  \partial 2 d,2 d4 e fis d fis g a1 d,2 |   d4 e fis d fis g a1  \bar ""   \break
  d4 cis b2 a d4 cis b2 a \fermata d |  d4 a a g fis g | a1 \bar "" \break
  << 
    { d2 d4 a a } { a2 a4 s fis } 
  >> g4 fis g | a1 g4 fis | e2 d g4 fis | e2 d \bar "" \break
  d'4 cis b2 a d4 cis b2 a g4 fis e1. | \partial 1 d1 \bar "||" d1. | d1. \bar "|."
  
}

alto = \relative c' {
  \global
\partial 2  a2 d1 d2 << {d2 ( cis) } 
                                                                \new Voice{ \voiceFour e1} >> 
  
  d2 a4 cis d2 d << {d2 ( cis) } 
                                                                \new Voice{ \voiceFour e1} >> 
  
  a4 a a ( g ) fis2 d4 e fis( e) cis2 a'4( g) | fis2. e4 d2 << {d2 ( cis) } 
                                                                \new Voice{ \voiceFour e1} >> 
  
  d4( e) d << cis g'>> d d2. | d4( cis fis e) d d d( cis) d2 d4 d d( cis) b2                                                    
  fis'4 e fis( e) cis2 << { fis2 ~ fis4 e2 fis4} {a2 ~ a4 g2 b,4} >> b4 c |
  d2 ( cis1) \partial 1 a1      b1. a1.
}

tenor = \relative c' {
  \global
  fis,2 fis4 g a fis b2 a1 a4( b) a g a2 b a1 
  d4 d d2 d f,4 a a( gis ) a2 d2 d2. a4 a g e2 a2 
  a2 a2. b4 a g a1 b4 b b( a) a2 b4 a b ( g) fis2 
  fis4 a a( gis) a2 << a2 fis >> fis4( g) e( fis) g a b2 ( a g) 
  \partial 1 fis1 g1. fis1.
}

bass = \relative c {
  \global
  d2 d2. d8 cis b4 e a,2( a'4 g4) fis4( g) fis e d cis b e a,2 a'4( g)
  fis4 fis g2 d b4 cis d( e) g,2 fis'4( e) d cis b cis d b a2 a'4( g)
  fis4 ( g) fis e d b' a g fis( e d cis) b a g2 fis2 e4 fis g( a) b2 
  b4 cis d( e) a,2 b4 cis d( e) cis( dis) e fis g2 ( a a,) 
  \partial 1 d1 g,1. d'1.
}

verseOne = \lyricmode {
  \set stanza = "1."
온   천 하   만 물   우 러 러   다   주 를   찬 양 하 여 라 
할 렐 루 야   할 렐 루 야   저   금 빛 나 는   밝 은   해 
저   은 빛   나 는   밝 은   달   하 나 님 을   찬 양 하 라 

 할 렐 루 야   할 렐 루 야   할 렐 루 야  아 멘 

  
}

verseTwo = \lyricmode {
  \set stanza = "2."
힘 차 게   부 는   바 람 아   떠 가 는   묘 한   구 름 아 
할 렐 루 야   할 렐 루 야   저   돋 는   장 한   아 침   해 
저   지 는   고 운   저 녁   놀   하 나 님 을   찬 양 하 라 

  
}

verseThree = \lyricmode {
  \set stanza = "3."
저   흘 러 가 는   맑 은   물   다   주 를   노 래 하 여 라 
할 렐 루 야   할 렐 루 야   저   조 화   많 은   밝 은   불 
그   빛 과   열 을   내 어 서   하 나 님 을   찬 양 하 라 

  
}
verseFour = \lyricmode {
  \set stanza = "4."
저   귀 한   땅 은   날 마 다   한   없 는   복 을   펼 치 어 
할 렐 루 야   할 렐 루 야   땅   위 의   꽃 과   열 매 들 
주   영 광   나 타 내 어 서   하 나 님 을   찬 양 하 라 

  
}
verseFive = \lyricmode {
  \set stanza = "5."
너   선 한   마 음   가 진   자   늘   용 서 하 며   살 아 라 
할 렐 루 야   할 렐 루 야   큰   고 통   슬 픔   지 닌   자 
네   근 심   주 께   맡 겨 라   하 나 님 을   찬 양 하 라 


  
}
verseSix = \lyricmode {
  \set stanza = "6."
주   은 혜   받 은   만 민 아   다   꿇 어   경 배 하 여 라 
할 렐 루 야   할 렐 루 야   성   삼 위 일 체   주 님 께 
존 귀 와   영 광   돌 려 라   주 를   찬 양   할 렐 루 야 


  
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSix
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
