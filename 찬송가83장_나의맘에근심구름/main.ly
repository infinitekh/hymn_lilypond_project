\version "2.22.0"
\include "english.ly"
\header {
  title = "83장 나의 맘에 근심 구름"
}

global = {
  \time 4/4
  \key df \major
  \tempo 4=100
}

soprano = \relative c'' {
  \global
 \partial 4  
 \autoBeamOff
 f,8. gf16 af8. af16 af8 bf af f f8. af16 df8. ef16 df8 bf af4 f8. gf16 af8. df16 df8 bf af f f8. df16 ef2. \bar "" \break
  
  f8. gf16 af8. af16 af8 bf af f f8. af16 df8. ef16 df8 bf af4 df,8. ef16 f8. af16 af8 bf af f ef8. f16 df2.  \bar "" \break
  
  af'8. f16 af2. df8. ef16 df2~ df4. bf8 af8. af16 af8 bf af f f8. df16 ef2.  \bar "" \break 
  
  f8. gf16 af8 af af8. bf16 af4. af8 bf df df8. bf16 af4 df,8. ef16 f8. af16 df8 bf af f ef8. f16 df2. 
}

alto = \relative c' {
  \global
  \partial 4   \autoBeamOff
  df8. ef16 f8. f16 f8 gf f df df8. f16 f8. f16 gf8 gf f4 df8. ef16 f8. f16 gf8 gf f df df8. df16 c2.
  df8. ef16 f8. f16 f8 gf f df df8. f16 f8. f16 gf8 gf f4 df8. df16 df8. f16 f8 gf f df c8. c16 df2. 
  
  r4 r f8. f16 f4 r r gf8. gf16 gf4. gf8 f8. f16 f8 gf f df df8. df16 c2. 
  
  df8. ef16 f8 f f8. gf16 f4. f8 gf gf gf8. gf16 f4 df8. df16 df8. f16 f8 gf f df c8. c16 df2. 
  
}

tenor = \relative c' {
  \global \partial 4 \autoBeamOff 
  af8. af16 df8. df16 df8 df df af af8. af16 af8. af16 bf8 df df4 af8. af16 df8. af16 bf8 df df af g8. g16 af2. 
  
  af8. af16 df8. df16 df8 df df af af8. af16 af8. af16 bf8 df df4 f,8. gf16 af8. df16 df8 df df af gf8. af16 f2. 
  
  r4 r df'8. df16 df4 r r bf8. bf16 bf4. df8 df8. df16 df8 df df af g8. g16 af2. 
  
  af8. af16 df8 df df8. df16 df4. df8 df bf bf8. df16 df4 f,8. gf16 af8. df16 af8 df df af gf8. af16 f2. 
}

bass = \relative c {
  \global \partial 4 \autoBeamOff
  df8. df16 df8. df16 df8 df df df df8. df16 df8. df16 gf8 gf df4 df8. df16 df8. df16 gf8 gf df df bf8. bf16 af2. 
  
  df8. df16 df8. df16 df8 df df df df8. df16 df8. df16 gf8 gf df4 df8. df16 df8. df16 df8 df df df af8. af16 df2. 
  
  r4 r df8. df16 df4 r r gf8. gf16 gf4. gf8 df8. df16 df8 df df df bf8. bf16 af2. 
  
  df8. df16 df8 df df8. df16 df4. df8 gf gf gf8. gf16 df4 df8. df16 df8. df16 df8 df df df af8. af16 df2 
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  나 의   맘 에   근 심   구 름   가 득 하 게   덮 이 고   슬 픈   눈 물   하 염 없 이   흐 를   때 
인 자 하 고   부 드 러 운   음 성 으 로   부 르 사   나 를   위 로 할   이   누 가   있 을 까 
주   예 수   주   예 수   주   예 수   밖 에   누 가   있 으 랴 
슬 퍼   낙 심 될   때 에   내   친 구   되 시 는   구 주   예 수   밖 에   다 시   없 도 다 


  
}

verseTwo = \lyricmode {
  \set stanza = "2."
 
 무 거 운   짐   등 에   지 고   인 생   길 을   가 는   자   힘 이   없 어   쓰 러 지 려   할   때 에 
능 력   있 는   팔 을   펴 서   나 의   손 을   붙 들 어   나 를   구 해 줄   이   누 가   있 을 까 


  
}

verseThree = \lyricmode {
  \set stanza = "3."
   지 은   죄 를   돌 아 보 니   부 끄 럽 고   괴 로 워   자 나 깨 나   맘 에   평 안   없 을   때 
추 한   죄 인   용 납 하 사   품 에   안 아 주 시 고   깨 끗 하 게   하 실   이 가   누 굴 까 
  
}
verseFour = \lyricmode {
  \set stanza = "4."
 요 단   강 을   건 너 가 서   시 온   성 을   향 할   때   나 와   항 상   동 행 할   이   누 굴 가 
두 려 움 의   검 은   구 름   모 두   헤 쳐 버 리 고   나 의   갈   길   인 도 할   이   누 굴 까 
  
}

verseMen = \lyricmode {
    _ _   _ _   _ _   _ _   _ _ _ _   _ _ _   _ _   _ _   _ _ _ _   _ _   _ 
_ _ _ _   _ _ _ _   _ _ _ _   _ _ _   _ _   _ _ _   _   _ _   _ _ _ 
  주 예 수 주 예 수 
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
     \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verseMen
  >>
  \layout { }
  \midi { }
}
