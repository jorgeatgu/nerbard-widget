command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  """
  #{output}
  """

style: """
  -webkit-font-smoothing: antialiased
  font: 12px SF Mono
  top: 14px
  right: 180px
  color: #D0C5BF
  span
    color: #D0C5BF
"""
