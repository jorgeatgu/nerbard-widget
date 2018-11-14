command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <span>#{output}</span>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #D0C5BF
  font: 12px SF Mono
  right: 385px
  top: 15px
  span
    color: #D0C5BF
"""
