command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  #{output}
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #D0C5BF
  font: 12px SF Mono
  right: 15px
  top: 14px
"""
