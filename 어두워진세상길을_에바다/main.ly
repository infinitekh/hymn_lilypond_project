\version "2.24.3"
\include "english.ly"

\header {
  title = "에바다"
  subtitle = "어두워진 세상길을"
    tagline=##f
}

global = {
  \time 4/4
  \key e \major
  \tempo 4=160
}

chordNames = \chordmode {
  \global
 e1*2   \invertChords 2 
a,1*2 e1*2 fs1  \invertChords 2 b,:7 \break
  e1*2 \invertChords 2 a,1*2 e1 \invertChords 2 b,:7 e e:7 \break
  
   \invertChords 2 a,1*2 e1 cs1:m fs1 \invertChords 2 b,:7 e e:7 \break
 \invertChords 2  a,1*2 e1 cs:m fs1*2 \invertChords 2  b,1 \break
  
  \invertChords 2 b,2:7  \invertChords 2 a,4 ds:dim e1*2  
  %  \invertChords 2  b,2:7  \invertChords 2 a,4:maj7 ds:dim7 e1*2
  \invertChords 2 a, e  \invertChords 2 b,1 fs \break
  e1*2  \invertChords 2 a,1 e  \invertChords 2 b,1*2:7 e \break
  
}

melody = {
  \global
   \transpose c e { \relative e' {
     r4 e8 e e4 e e e d8 e4. r4 c8 c c4 c  c c b8 a4. 
    r4 e'8 e e4 e g g e8 c4. d1 ~d2. r4
     r4 e8 e e4 e e\( e\) d8 e4. r4 c8 c c4 c  c c b8 a4. 
    r4 e'8 e e4 e d d c8 d4. c1 ~c2. r4
    
    r4 a8 a a4 a c c b a 
    g2. c4 e1 r4 r8 d d4 d d d e8 f4. e1 ~e2. r4
    
   r4 a,8 a a4 a c c b a g2. c4 e1 
   r4 r8 d d4 d d2 g4 a4 g1 
    
   r4 g a b c2. c4 c2 g4 e a1 ~ a2. r4   g2. g4 c c g e d1 ~d2. r4 
    r e8 e e4 e e e d c c c b a g1 r4 d'8 d d4 d d8 d4. c4 b c1 ~ c2. r4 \bar "|."
                    }
}
}

words = \lyricmode {
  어 두 워 진 세 상 길 을 주 님 없 이 걸 어 가 다 

나 의 영 혼 어 두 워 졌 네 어 느 것 이 길 - 인 지 

어 느 것 이 진 리 인 지 아 무 것 도 알 수 없 었 네 

주 님 없 이 살 아 가 는 모 든 삶 실 패 와 좌 절 뿐 이 네 

사 랑 하 는 나 의 주 님 내 영 혼 눈 을 뜨 게 하 소 서 

열 려 라 에 바 다 열 려 라 눈 을 뜨 게 하 소 서 

죄 악 으 로 어 두 어 진 나 의 영 혼 을 나 의 눈 을 뜨 게 하 소 서 

 
}
wordsTwo = \lyricmode { 
  

아 무 것 도 알 수 없 고 아 무 것 도 볼 수 없 고 

아 무 것 도 들 을 수 없 네 세 상 에 서 방 황 하 며 

이 리 저 리 헤 매 일 때 사 랑 하 는 주 님 만 났 네 

어 두 웠 던 나 의 눈 이 열 리 고 막 혔 던 귀 가 열 렸 네 

답 답 했 던 나 의 마 음 열 리 고 나 의 영 혼 살 리 네 


%열 려 라 에 바 다 열 려 라 눈 을 뜨 게 하 소 서 

%죄 악 으 로 어 두 어 진 나 의 영 혼 을 나 의 눈 을 뜨 게 하 소 서 

}
\score {
  <<
    \new ChordNames \chordNames
    \new Staff \chordNames
    \new Staff { \melody } 
    \addlyrics { \words }
    \addlyrics { \wordsTwo } 
  >>
  \layout {
  indent = 0 
  }
  \midi { }
}
\paper {
 paper-width = 168\mm
 paper-height = 360\mm
 
}