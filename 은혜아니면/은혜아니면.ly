\version "2.18.2"
\language "english"

\header {
  title = "은혜아니면"
}

global = {
  \time 4/4
  \key g \major
  \tempo 4=72
}

chordNames = \chordmode {
  \global
   
   s1 g d/fs c d 
   
   c g2:2/b e:m a1:m d 
   g d:2/fs e2:m b:m c2 c/b
   
   a:m d b:m e:m a:m a:m/g d1. e4:m fs:m
   
   g1 fs2:aug b:7 e1:m d2:m7 g:7 c e:m
   
   a1:m d d2 e4:m fs:m g1 fs2:aug b:7 e1:m
   
   d2:m7 g:7 c e:m a:m d c1 g 
   
   g:m d:2/fs e2:m b:m7 c1
   a2:m d b:m e:m a:m a:m/g d e4:m fs:m
   
   g1 fs2:aug b:7 e1:m d2:m7 g:7 c e:m a1:m d:4  d2 e4:m fs:m g1 fs2:aug b:7 e1:m
   
   d2:m9  g:7 c e:m a:m d 
   
   e1:m    e:m/ds g/d 
   
   a/cs  c b:m 
   
   a2:m g d1 e:7 a
   
   gs2:m cs:7 fs1:m  e2:m7 a:7 d1 e:m
   
   e1 e2 e4/fs  e/gs a1 gs2:m cs:7 fs:m fs:m/f e2:m7  a:7 
   
   e1:m e e a g fs:m f2 f4/e d a1
}

melody = \relative c' {
  \global
   r2 r4 b8 c d4. d8 d4 c8 b a4. d8 d4 a8 b c c4. c8 b c d b2 (a4 )b8 a 
   \break
   g8 e' e4 ~e8 e fs g fs4. d8 d4 c8 b c g'4 c,8 c b c d a2 r4 b8 c 
   \break
   d8 d4 d8 d4. d8 e4. fs8 d4 e8 fs g g4 g8 fs g16 fs ~fs8 d e2. r4
   \break
   c8 d e g fs4. e8 d e fs a g2 a4 a8 b c b a g a1    
   r4 d,8 d g4 a 
   
   b1 r4. a8 a b g fs g1 r4 f8 g a b c d c4. c8 \tuplet 3/2 { b4 c d }  \break
   
   c4. c8 c b c d a1 r4 d,8 d d'4 c b1 r4. a8 a b c b g1 \break
   
  r2 g8 a b d c4. c8 c b c d a4. a8 a b g fs g1 ~g2 r4 b,8 c \break 
  
  d4. d8 d4 d8 d e4. fs8 d4 r8 e16 fs g8 g4 g8 fs g16 fs ~ fs8 d e2. r4 \break
  
  c8 d e g fs4 fs8 e d e fs a g2 a4 a8 b c b a g a4 d,8 d g4 a \break
  \pageBreak
  b1 r4. a8 a b g fs g1 r4 f8 g a b c d c4. c8 \tuplet 3/2 { b4 c d }  \break
  
  c4. c8 c b c d a1 r4 d,8 d d'4 c b1 r4. a8 a b c b g1 \break
  
  r2 g8 a b d c4. c8 c b c d a4. a8 a b g fs \break
  
  g4 r8 e16 fs g8 e16 fs g8 e16 fs g2 r4 r8 e16 fs g8 g4 e8 g e g b \break
  
  a8 g16 e ~e2 r8 e16 fs g8 g fs g ~g4 r8 g16 a b8 b a b ~b4 r8 a16 b \break
  
  c8 c4 b8 c4 c8 d  \bar "||"  \key a \major  d1 ( e8 ) r e e e4 d cs1 \break 
  
  r4. b8 a cs a gs a1 r4 gs8 a b cs d e d4. d8 d cs d e d4. d8 \tuplet 3/2 { cs4 d e }  \break 
  
  b1 r4 e8 e e4 d cs1 r4. b8 b cs d c a1 r2 a8 b cs e  \break
  
  d4. d8 \tuplet 3/2 { cs4 d e } b1 r4 a a a a1  \break
  
  r4 a a a e'4 ( d2. ) r4 a a a4 << a1 e' >>
  
  
}

words = \lyricmode {
 어 둠 속 헤 매 이 던 내 영 혼 갈 길 몰 라 방 황 할 때 에 주 의 
 십 자 가 영 광 의 그 빛 이 나 를 향 해 비 추 어 주 셨 네 주 홍 
 빛 보 다 더 붉 은 내 죄 그 리 스 도 의 피 로 씻 기 어 
 완 전 한 사 랑 주 님 의 은 혜 로 새 생 명 주 께 얻 었 네 은 혜 아 니 
 면 나 서 지 못 하 네 십 자 가 의 그 사 랑 능 력 아 니 
 면 나 서 지 못 하 네 은 혜 아 니 면 나 서 지 못 하 네 
 놀 라 운 사 랑 그 은 혜 아 니 면 나 서 지 못 하 네 나 의 노
 력 과 의 지 가 아 닌 오 직 주 님 의 그 뜻 안 에 서 
 의 로 운 자 라 내 게 말 씀 하 셨 네 완 전 하 신 그 은 혜 로 은 혜 아 니
 면 나 서 지 못 하 네 십 자 가 의 그 사 랑 능 력 아 니
 면 나 서 지 못 하 네 
 
 은 혜 아 니
 면 나 서 지 못 하 네 
 
 완 전 한 사 랑 그 은 혜 아 니 면 나 서 지 못 하 네 
 
 
 2 이 제 나 사 는 것 아 니 요 오 직 예 수 내 안 에 살 아 계 시 니 나 의 능 력 아 닌 주 의 능 력 으 로 이 제 주 와 함 께 살 리 라 
 오 직 은 혜 로 나 살 아 가 리 라 십 자 가 의 그 사 랑 주 의 능 력 으 로 나 는 서 리 라 
 
 주 의 은 혜 로 나 살 아 가 리 라 십 자 가 사 랑 그 능 력 으 로 나 살 리 라 주 은 혜 로 나 살 리 라 
 


  
}

\score {
  <<
    \new ChordNames { 
      \set Staff.midiInstrument = #"string ensemble 1"
       \p   \chordNames
    }
   % \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout { indent = #0
   \context {
    \Staff
    \override LyricText.font-size = #+4
  
   }
  }
  \midi { }
}
