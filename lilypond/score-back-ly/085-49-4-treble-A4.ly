%% ----------------------------------------------------------------------------
%% Generated on: 2018 December 27
%% Note Name: A4
%% Octave: 4
%% Clef: treble
%% Filename: 085-49-4-treble-A4
%% ----------------------------------------------------------------------------

\version "2.19.82"

\include "../piano_note_colors.ly"

\header {
  tagline = ""
}

upper = {
  \clef treble
  \numericTimeSignature
  \override NoteHead.color = #colorized-note
  \override Stem.color = #colorized-note
  \override Accidental.color = #colorized-note
  % treble note in color
  r4 a'4
  % treble octave in color
  r4 a4 a'4 a''4
  \override NoteHead.color = #default-black
  \override Stem.color = #default-black
  \override Accidental.color = #default-black
  % treble octave repeat in black
  r4 a4 a'4 a''4
  \bar "|."
}

lower = {
  \clef bass
  \numericTimeSignature
  \override NoteHead.color = #colorized-note
  \override Stem.color = #colorized-note
  \override Accidental.color = #colorized-note
  % bass note in color
  r2
  % bass octave in color
  r1
  \override NoteHead.color = #default-black
  \override Stem.color = #default-black
  \override Accidental.color = #default-black
  % bass octave repeat in black
  r1
}

\score {
  \new PianoStaff <<
    \context Score
    \applyContext #(override-color-for-all-grobs default-black)
    \time 4/4
    \partial 2
    \new Staff = upper { \upper }
    \new Staff = lower { \lower }
  >>
  \layout { }
  \midi { }
}