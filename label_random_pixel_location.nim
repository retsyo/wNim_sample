#[
  we can also use pixel coodinate and width/height while creaing a control
]#

import strformat, wNim, random

const W = 400
const H = 300


randomize()


let app = App()
let frame = Frame(title="Hello World", size=(W, H))

for i in 0..200:
  StaticText(frame,
    label=fmt"label {i:d}",
    pos=( rand(6 .. W-6), rand(6 .. H-6) ),
    style=(
      sample([wAlignLeft, wAlignRight, wAlignCentre])
      #~ or
      #~ sample([wBorderSimple, wBorderSunken, wBorderRaised, wBorderStatic, wBorderDouble, wTransparentWindow])
    )
  )

frame.center()
frame.show()
app.mainLoop()
