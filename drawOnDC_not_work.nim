import strformat
import wNim

let app = App()
let frame = Frame(title="Hello World", size=(400, 300))
let panel = Panel(frame)

let size = panel.clientSize
let factorX = size.width / 460
let factorY = size.height / 120


#~ var dc = PaintDC(frame)
var dc = PaintDC(panel)
dc.brush = Brush(color=0xD9AA85)
dc.pen = wTransparentPen
dc.scale = (factorX, factorY)
dc.drawText("hello", 0, 0, )
dc.drawEllipse(15, 35, 90, 50)
dc.drawRoundedRectangle(130, 35, 90, 50, 10)
dc.drawArc(240, 45, 340, 45, 290, 30)
dc.drawPolygon([(355, 65), (405, 95), (405, 65), (445, 35), (365, 25)])


var self = panel
var size2 = self.getClientSize()
echo $size2
var bmp = Bitmap(size)
var dc2 = self.ClientDC()
dc2.brush = Brush(color=0xD9AA85)
#~ dc.pen = wTransparentPen
#~ dc.scale = (factorX, factorY)
dc2.drawText("hello", 0, 0, )
dc2.drawEllipse(15, 35, 90, 50)
var memdc = MemoryDC()
memdc.selectObject(bmp)
memdc.blit(0, 0, size2.width, size2.height, dc2)
memdc.selectObject(wNilBitmap)

var image = Image(bmp)
image.saveFile("filename.jpg")

# main loop
frame.center()
frame.show()
app.mainLoop()
