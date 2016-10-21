command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <svg style="display: inline-block; vertical-align: middle;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
    <path fill="#B26287" d="M18.6,1.6h-2.2V0.7c0-0.2-0.1-0.3-0.3-0.3H14c-0.2,0-0.3,0.1-0.3,0.3v0.9H6.8V0.7c0-0.2-0.1-0.3-0.3-0.3
      H4.3C4.1,0.4,4,0.5,4,0.7v0.9H1.8c-0.2,0-0.3,0.1-0.3,0.3v3.4v13.4c0,0.2,0.1,0.3,0.3,0.3h16.9c0.2,0,0.3-0.1,0.3-0.3V5.4V1.9
      C19,1.8,18.8,1.6,18.6,1.6z M14.3,1h1.6v0.9v0.9h-1.6V1.9V1z M4.6,1h1.6v0.9v0.9H4.6V1.9V1z M2.1,2.2H4v0.9c0,0.2,0.1,0.3,0.3,0.3
      h2.2c0.2,0,0.3-0.1,0.3-0.3V2.2h6.9v0.9c0,0.2,0.1,0.3,0.3,0.3h2.2c0.2,0,0.3-0.1,0.3-0.3V2.2h1.9v2.8H2.1V2.2z M2.1,18.5V5.7h16.2
      v12.8H2.1z"/>
    <path fill="#B26287" d="M12.7,7.6h-2.2H9.9H7.7H7.1H4.3v2.8V11v2.2v0.6v2.8h2.8h0.6h2.2h0.6h2.2h0.6h2.8v-2.8v-0.6V11v-0.6V7.6
      h-2.8H12.7z M10.5,8.2h2.2v2.2h-2.2V8.2z M12.7,13.2h-2.2V11h2.2V13.2z M7.7,11h2.2v2.2H7.7V11z M7.7,8.2h2.2v2.2H7.7V8.2z
       M4.9,8.2h2.2v2.2H4.9V8.2z M4.9,11h2.2v2.2H4.9V11z M7.1,16H4.9v-2.2h2.2V16z M9.9,16H7.7v-2.2h2.2V16z M12.7,16h-2.2v-2.2h2.2V16
      z M15.5,16h-2.2v-2.2h2.2V16z M15.5,13.2h-2.2V11h2.2V13.2z M15.5,8.2v2.2h-2.2V8.2H15.5z"/>
  </svg>
  #{output}
"""

style: """
  -webkit-font-smoothing: antialiased
  color: #B16286
  font: 14px SF Mono
  right: 98px
  top: 10px
"""
