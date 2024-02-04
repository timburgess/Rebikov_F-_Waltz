\version "2.23.7"

\header {
  title = "Waltz in F#"
  composer = "Vladimir Rebikov (1866-1920)"
  maintainer = "Tim Burgess"
  maintainerEmail = "timburgess@mac.com"
  tagline = ##f
}

fbf = { r4 <fis b fis'>4 <fis b fis'>4 }
 
dad = { r4 <d a d'> <d a d'> }

cfc = { r4 <cis eis cis'> <cis eis cis'> }

righthand =  {
  \key fis \minor
  \numericTimeSignature \time 3/4
  \tempo 4 = 110
  \clef treble
  \relative c'' {
    << { <a-1 cis-2>4\mf( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> | << { <a-1 cis-2>4( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> \break

    <d-1 fis-2>4( <a'-3 cis-5>4. <gis b>8 | <e gis>4 <cis'-3 e-5>4. <b d>8) | r4 << { <gis-2 cis-5>4( <fis b>4  a2 gis4) } \\ { s2 <b, d>2. } >> \break

    % repeat first four measures
    << { <a-1 cis-2>4\mf( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> | << { <a-1 cis-2>4( r4. <a cis>8 | <e' gis>2 <d fis>4) } \\ { r4. <fis a>4. | b,2. } >> \break

    R2.*4 \break
  }
  
  \fixed c' {
    % 17
    \fbf \dad \dad \cfc \break

    << { d'2 cis'4 | fis'2 b4 | a2 gis4 | cis'2. } \\ { r4 <fis ais> <fis ais> | r4 <fis b> <fis b> | r4 <cis eis> <cis eis gis> | r4 <cis gis> <cis fis> } >> \break

    % 25
    \fbf \dad \dad \cfc \break

    R2.*4 \break
    R2.*4 \break
    R2.*4 \break
    R2.*4


   \bar "|."
  }
}

lefthand =  {
  \key fis \minor
  \numericTimeSignature \time 3/4
  \relative c, {
    \clef bass {
      % 1
      fis4 r4 <cis'-4 fis-2 a-1>4 | b4 <fis'-3 gis-2 d'-1>4 r4 | fis,4 r4 <cis' fis a>4 | b4 <fis' gis d'>4 r4 |    
    
      % 3
      d4 r4 <gis b fis'> |
    }
    \clef treble { gis r4 <d' fis b> }
      
    \clef bass {
      d,4 r4 <gis b fis'> | cis, <gis' b eis> r4 |


      % 9
      fis,4 r4 <cis'-4 fis-2 a-1>4 | b4 <fis'-3 gis-2 d'-1>4 r4 | fis,4 r4 <cis' fis a>4 | b4 <fis' gis d'>4 r4 |    

      % 13
      d4 r4 <gis b fis'> |
    }
    \clef treble { gis r4 <d' fis b> }
      
    \clef bass {
      cis,4 r4 <b' eis>4 | fis,4 <cis' cis'>2 |

      % 17
      << { e'2( d4 cis2 b4 a2 b4-1 a2 gis4) } \\ { gis2. fis2.~-5 fis2. eis2.-5 } >>

      % 21
      e2.-1( d2. cis2 b4 a2.)

      % 25
      << { e''2( d4 cis2 b4 a2 b4-1 a2 gis4) } \\ { gis2. fis2.~-5 fis2. eis2.-5 } >>

      % 29
      e2.-1( d2. cis2 bis4 cis2) r4

      \bar "|."
    }
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
   
