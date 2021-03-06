command: """
read -r running <<<"$(ps -ef | grep \"MacOS/Spotify\" | grep -v \"grep\" | wc -l)" &&
test $running != 0 &&
IFS='|' read -r theArtist theName <<<"$(osascript <<<'tell application "Spotify"
        set theTrack to current track
        set theArtist to artist of theTrack
        set theName to name of theTrack
        set durSec to (duration of current track / 1000) as text
        set tM to (round (durSec / 60) rounding down) as text
        if length of ((durSec mod 60 div 1) as text) is greater than 1 then
            set tS to (durSec mod 60 div 1) as text
        else
            set tS to ("0" & (durSec mod 60 div 1)) as text
        end if
        set myTime to tM as text & ":" & tS as text
        set pos to player position
        set nM to (round (pos / 60) rounding down) as text
        if length of ((round (pos mod 60) rounding down) as text) is greater than 1 then
            set nS to (round (pos mod 60) rounding down) as text
        else
            set nS to ("0" & (round (pos mod 60) rounding down)) as text
        end if
        set nowAt to nM as text & ":" & nS as text
        return theArtist & "|" & theName & "  " & noWat & " / " & myTime
    end tell')" &&
if [ -z "$theArtist" ]
then
    echo ""
else
    echo "$theArtist - $theName" || echo "Not Connected To Spotify"
fi
"""

refreshFrequency: 1000 # ms

render: (output) ->
  """
  #{output}
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #D0C5BF
  font: 12px SF Mono
  height: 25px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 14px
  width: 600px
"""
