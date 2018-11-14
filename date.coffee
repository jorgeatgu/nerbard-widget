command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  #{output}
"""

style: """
  -webkit-font-smoothing: antialiased
  color: #D0C5BF
  font: 12px SF Mono
  right: 80px
  top: 14px
"""
