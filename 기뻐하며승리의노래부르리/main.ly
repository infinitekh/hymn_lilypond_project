\version "2.24.3"
\include "english.ly"
\header {
  title = "기뻐하며 승리의 노래"
  tagline=""
}

global = {
  \time 4/4
  \key e \major
  \tempo 4=120
}

chordNames = \chordmode {
  \global
  e1 cs fs:m b2:6 b   \break
  gs1:m b4/a a fs2:m/a e1/b b \break
  e1 cs fs:m e2/b b \break
  e1 fs2 b e1*2 \break
  
  b1*2 e1*2 
  b1*2 e1*2
  a1*2 e1
  cs1:7 fs:m b:7 e1*2
  a1*2 e1 
  cs:7 fs:m b e1*2\break
  
  
}

melody = \relative c'' {
  \global
e,2 ~e8 fs gs b~ b2. gs8 b b4 a gs a gs2 fs \break
b2. gs8 b ds4 cs b a gs2 ~gs8 a gs4 fs2. r4 \break
e2 ~e8 e fs gs b2. gs8 b8 b4 a gs a gs2 \tuplet 3/2 { fs4 gs a } \break
b\( e\) b gs a2 gs4 fs4 e1 ~ e4 e' e e \break
ds( cs8 b8 ~b2  ~ |   b4) b cs ds  | e1 ~ \break
e4 e e e ds4( cs8 b ~b2~ b4) b8 b cs4 ds e1 ~ \break
 e4 gs,8 gs a4 b cs1 ~ cs4 cs b a | b e8 b ~ b2~  |\break
 b4 b a gs | a1 ~ a2 gs4 fs gs a8 b~ b2 ~  \break
b4 gs8 gs a4 b cs1 ~ cs2 b4 a b e8 b ~ b2  ~\break
 b4 b a gs a1 ~ a4 a8 a gs4 fs e1~e \bar "|."
}

words = \lyricmode {
  기  뻐 하 며 승 리 의 노 래 부 르 리 
  그 백 성 주 가 회 복 시 키 시 네 
  그 사 랑 으 로 억 눌 렸 던 자 모 아 칭 찬 과 명 - 성 얻 게 하 시 네 
  전 심 으 로 기 뻐 하 리 
  전 능 의 왕 함 께 하 시 네 
  기 뻐 외 치 며 주 께 두 손 들 리 
  춤 을 추 며 왕 께 찬 양 해 
  모 든 원 수 를 멿 하 신 주 님 
  전 능 의 왕 함 께 하 시 네 
  
}

\score {
  <<
    \new ChordNames \chordNames
  %  \new FretBoards \chordNames
    \new Staff { \melody }
    \addlyrics { \words }
  >>
  \layout {}
  \midi { }
}

\paper {
  #(set-paper-size "b5")
  indent = #0
  top-margin = #0
  bottom-margin = #0
  
}