command: "/System/Library/PrivateFrameworks/Apple80211.framework/" +
              "Versions/Current/Resources/airport -I | " +
              "sed -e \"s/^ *SSID: //p\" -e d"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <span>#{output}</span>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #f1e6cf
  font: 12px SF Mono
  right: 230px
  top: 13px
  display: block
  span
    color: #f1e6cf
"""
