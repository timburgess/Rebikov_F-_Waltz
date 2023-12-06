\version "2.23.7"

\header {
  title = "Waltz in F#"
  composer = "Vladimir Rebikov (1866-1920)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
  tagline = ##f
}

righthand =  {
  \key a \major
  \numericTimeSignature \time 3/4

  \clef "treble"
  \relative c'' {
    << { <a-1 cis-2>4\mf( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> | << { <a-1 cis-2>4( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> \break

    s2.





   \bar "|."
  }
}

lefthand =  {
  \key a \major
  \numericTimeSignature \time 3/4
  \clef "bass"
  \relative c {
    s2.*5

    



  \bar "|."
  }
}

\score {
   \context PianoStaff << 
    \context Staff = "treble" <<
      \righthand
    >>
    \context Staff = "bass" <<
      \lefthand
    >>
  >>
  \layout { }
  \midi { }
}
   
