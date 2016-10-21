command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  """
  <svg style="display: inline-block; vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" width="16.3" height="8.4" viewBox="0 0 16.3 8.4">
  <path fill="#FABD32" d="M14.9,0H0v8.4h14.9V6.1h1.4V2.2h-1.4V0z M13.5,7H1.4V1.4h12.1V7z M4.1,6H2.4V2.3h1.7V6z M6.9,6H5.2V2.3h1.7V6zM9.7,6H8V2.3h1.7V6z"/>
  </svg>
  #{output}
  """

style: """
  -webkit-font-smoothing: antialiased
  font: 14px SF Mono
  top: 11px
  right: 225px
  color: #FABD2F
  span
    color: #9C9486
"""
