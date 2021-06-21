\version "2.22.0"
\header {
  title = "거룩한 주의 날"
  composer = "찬송가 45장"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }


}
\paper {
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:factor (/ staff-height pt 20)
   ))
  
  system-system-spacing =
  #'((basic-distance . 20) 
     (minimum-distance . 16)
     (padding . 1)
     (stretchability . 40)) 

}
global = {
  \time 3/4
  \key aes \major
  \tempo 4=85
}

chordNames = \chordmode {
  \global
  aes2.\pppp ~ aes4. des4.  es2.:7 aes ~ aes des4. bes 
  aes es aes2. es4. f:m aes es aes es ~ es2.
  aes des aes4. es:7 aes2. ~ aes  es4.:7 f:m
  aes es ~ es2. aes4. c f:m des aes es:7 aes2.
  
   
}

melody=  \relative c'' { \global \clef "treble^8"
	c4.\fff c4 c8 | aes'4 g8 f4. | es8 es es f4 es8 | es2. |
	aes4.\ff aes4 g8 | f4 f8 f4. | es8 f aes bes4 aes8 | aes2. | 
	bes8 bes es, aes4 bes8 | aes4. g |  c8 c aes bes4 c8 bes4. es4. |
	es8 es des c4 c8 | aes4. des | c8 c c bes4 g8 | aes2. | 
	es8^"후렴" es f aes4 g8 | g4. f |
	aes8 aes aes bes4 c8 | bes4. bes | es8\fffff es des c4. | aes8 aes aes des4. | es,16 es f8 aes c c bes |aes2.

}

words = \lyricmode { \set stanza = "1. "
 거 룩 한 주 의 날 주 앞 에 모 여 서 찬 양 과 경 배 를 주 님 께 드 리 세 
 주 님 의 크 신 사 랑 놀 라 운 주 의 은 혜 
 귀 하 신 주 께 영 광 영 광 을 돌 리 세 엎 드 려 경 배 하 세 
 주 님 의 크 신 은 혜 영 원 토 록 할 렐 루 야 소 리 높 여  찬 양 하 세 
 
}
wordstwo = \lyricmode{\set stanza = "2. "
  거 룩 한 주 의 날 주 앞 에 모 여 서 온 몸 과 마 음 을 다 주 께 드 리 세 한 없 는 주 의 복 은 부 족 함 전 혀 없 네 귀 하 신 
  주 께 감 사 감 사 를 드 리 세 
}
wordsthree = \lyricmode{\set stanza = "3. "
  거 룩 한 주 의 날 주 앞 에 모 여 서 하 늘 의 소 망 을 다 함 께 누 리 세 날 마 다 주 의 성 령 우 리 를 인 도 하 니 십 자 가 
  바 라 보 며 주 님 만 따 르 리 
}

\score {
  <<
    \new ChordNames { \set midiInstrument = #"string ensemble 1"
                    \set Staff.midiMinimumVolume = #0.3
                  \set Staff.midiMaximumVolume = #0.5
                    
                      \chordNames}
    % \new FretBoards \chordNames
    \new Staff  { \set Staff.midiInstrument = #"violin"   
                  \set Staff.midiMinimumVolume = #0.8
                  \set Staff.midiMaximumVolume = #1
                  \melody }
    \addlyrics { \words }
        \addlyrics { \wordstwo }
            \addlyrics { \wordsthree }
  >>
  \layout {   indent = 0\cm}
  \midi { }
}
