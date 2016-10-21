command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <svg style="display: inline-block; vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
    <path fill="#468588" d="M10,0.2c-5.4,0-9.8,4.4-9.8,9.8s4.4,9.8,9.8,9.8s9.8-4.4,9.8-9.8S15.4,0.2,10,0.2z M10,19.2 c-5,0-9.1-4.1-9.1-9.1S5,0.9,10,0.9S19.2,5,19.2,10S15.1,19.2,10,19.2z"/>
    <path fill="#468588" d="M10,2.2c-0.2,0-0.3,0.1-0.3,0.3V10H4.8c-0.2,0-0.3,0.1-0.3,0.3c0,0.2,0.1,0.3,0.3,0.3H10 c0.2,0,0.3-0.1,0.3-0.3V2.5C10.4,2.4,10.2,2.2,10,2.2z"/>
  </svg>

  #{output}
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #458588
  font: 14px SF Mono
  right: 15px
  top: 10px
"""
