import wNim

let app = App(wSystemDpiAware)
let frame = Frame(title="title", style=wDefaultFrameStyle or wModalFrame)

let panel = Panel(frame)

let notebook = NoteBook(panel)
notebook.addPage("page 1")
notebook.addPage("page 2")
notebook.addPage("page 3")

let staticbox1 = StaticBox(notebook.page(0), label="staticbox1")
let staticbox2 = StaticBox(notebook.page(0), label="staticbox2")
let cboxIndex =  TextCtrl(notebook.page(0), value="cboxIndex")
let staticbox3 = StaticBox(notebook.page(0), label="staticbox3")

# in staticbox1
let textFile1 = TextCtrl(notebook.page(0), value="textFile1", style=wBorderSunken)
let btnFile1 = Button(notebook.page(0), label="btnFile1")

let lblSheet1 = StaticText(notebook.page(0), label="lblSheet1")
let cboxSheet1 = ComboBox(notebook.page(0), value="cboxSheet1")

let lblCol1 = StaticText(notebook.page(0), label="lblCol1")
let txtCol1 = TextCtrl(notebook.page(0), value="txtCol1", style=wBorderSunken)

let lblStartRow1 = StaticText(notebook.page(0), label="lblStartRow1")
let txtStartRow1 = TextCtrl(notebook.page(0), value="txtStartRow1", style=wBorderSunken)

let lblEndRow1 = StaticText(notebook.page(0), label="lblEndRow1")
let txtEndRow1 = TextCtrl(notebook.page(0), value="txtEndRow1", style=wBorderSunken)

# in staticbox2
let textFile2 = TextCtrl(notebook.page(0), value="textFile2", style=wBorderSunken)
let btnFile2 = Button(notebook.page(0), label="btnFile2")

let lblSheet2 = StaticText(notebook.page(0), label="lblSheet2")
let cboxSheet2 =  TextCtrl(notebook.page(0), value="cboxSheet2")

let lblCol2 = StaticText(notebook.page(0), label="lblCol2")
let txtCol2 = TextCtrl(notebook.page(0), value="txtCol2", style=wBorderSunken)

let lblStartRow2 = StaticText(notebook.page(0), label="lblStartRow2")
let txtStartRow2 = TextCtrl(notebook.page(0), value="txtStartRow2", style=wBorderSunken)

let lblEndRow2 = StaticText(notebook.page(0), label="lblEndRow2")
let txtEndRow2 = TextCtrl(notebook.page(0), value="txtEndRow2", style=wBorderSunken)

# in staticbox3
let btnGo = Button(notebook.page(0), label="btnGo")
let btnQuit = Button(notebook.page(0), label="btnQuit")


#### page 2
let textctrl = TextCtrl(notebook.page(1), value="textctrl", style=wTeRich or wTeMultiLine)


#### page 3
let txtDo = StaticText(notebook.page(2), label="txtDo", style=wAlignCentre)

let btnPage3 = Button(notebook.page(2), label="btnPage3")


proc goodLayout() =

    panel.layout:
        notebook:
            left = panel.left + 10
            top = panel.top + 10
            right = panel.right - 10
            bottom = panel.bottom - 10

        staticbox1:
            left = notebook.left + 10
            top = notebook.top + 10
            right = notebook.right - 40
            height = (notebook.height - 5*10 ) / 10 * 3

        textFile1:
            left = staticbox1.left + 10
            top = staticbox1.top + 30
            width = (staticbox1.width - 3*10) * 0.8
            height = (staticbox1.height - 6*10 ) / 3

        btnFile1:
            left = textFile1.right + 10
            top = textFile1.top
            width = (staticbox1.width - 3*10) * 0.2
            height = textFile1.height

        lblSheet1:
            left = textFile1.left
            top = textFile1.bottom + 10
            width = (staticbox1.width - 3*10) * 0.2
            height = textFile1.height

        cboxSheet1:
            left = lblSheet1.right + 10
            top = lblSheet1.top
            width = (staticbox1.width - 3*10) * 0.8
            height = textFile1.height

        lblCol1:
            left = textFile1.left
            top = cboxSheet1.bottom + 10
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        txtCol1:
            left = lblCol1.right + 10
            top = lblCol1.top
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        lblStartRow1:
            left = txtCol1.right + 10
            top = txtCol1.top
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        txtStartRow1:
            left = lblStartRow1.right + 10
            top = lblStartRow1.top
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        lblEndRow1:
            left = txtStartRow1.right + 10
            top = txtStartRow1.top
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        txtEndRow1:
            left = lblEndRow1.right + 10
            top = lblEndRow1.top
            width = (staticbox1.width - 7*10) / 6
            height = textFile1.height

        staticbox2:
            left = staticbox1.left
            top = staticbox1.bottom + 10
            right = staticbox1.right
            height = staticbox1.height


        textFile2:
            left = staticbox2.left + 10
            top = staticbox2.top + 30
            width = (staticbox2.width - 3*10) * 0.8
            height = (staticbox2.height - 6*10 ) / 3

        btnFile2:
            left = textFile2.right + 10
            top = textFile2.top
            width = (staticbox2.width - 3*10) * 0.2
            height = textFile2.height

        lblSheet2:
            left = textFile2.left
            top = textFile2.bottom + 10
            width = (staticbox2.width - 3*10) * 0.2
            height = textFile2.height

        cboxSheet2:
            left = lblSheet2.right + 10
            top = lblSheet2.top
            width = (staticbox2.width - 3*10) * 0.8
            height = textFile2.height

        lblCol2:
            left = textFile2.left
            top = cboxSheet2.bottom + 10
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        txtCol2:
            left = lblCol2.right + 10
            top = lblCol2.top
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        lblStartRow2:
            left = txtCol2.right + 10
            top = txtCol2.top
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        txtStartRow2:
            left = lblStartRow2.right + 10
            top = lblStartRow2.top
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        lblEndRow2:
            left = txtStartRow2.right + 10
            top = txtStartRow2.top
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        txtEndRow2:
            left = lblEndRow2.right + 10
            top = lblEndRow2.top
            width = (staticbox2.width - 7*10) / 6
            height = textFile2.height

        cboxIndex:
            left = staticbox2.left
            top = staticbox2.bottom + 10
            right = staticbox2.right
            height = staticbox2.height / 3

        staticbox3:
            left = cboxIndex.left
            top = cboxIndex.bottom
            right = cboxIndex.right
            height = staticbox2.height / 3 * 2

        btnGo:
            left = staticbox3.left + 10
            top = staticbox3.top + 20
            width = (staticbox3.width - 3*10) / 2
            height = staticbox3.height - 3*10

        btnQuit:
            left = btnGo.right + 10
            top = btnGo.top
            width = btnGo.width
            height = btnGo.height


        # page 3
        txtDo:
            left = notebook.left + 10
            top = notebook.top + 10
            width = (notebook.width - 4*10)
            bottom = notebook.height - 10 - btnPage3.height

        btnPage3:
            left = txtDo.left
            top = txtDo.bottom + 10
            width = txtDo.width
            height = width / 2

proc badLayout() =

    panel.autolayout """
HV:|-[notebook]-|
    """

    notebook[0].autolayout """
H:|-[staticbox1(staticbox2,cboxIndex,staticbox3)]-|
V:|-[staticbox1(staticbox2,cboxIndex*5,staticbox3)]-[staticbox2]-[cboxIndex]-[staticbox3]-|

outer: staticbox1
V:|-[{file1:[textFile1,btnFile1]}(sheet1*2, cr1)]-{sheet1:[lblSheet1,cboxSheet1]}-{cr1:[lblCol1,txtCol1,lblStartRow1,txtStartRow1,lblEndRow1,txtEndRow1]}-|
H:|-[file1(sheet1,cr1)]-|

outer: staticbox2
V:|-[{file2:[textFile2,btnFile2]}(sheet1*2, cr2)]-{sheet2:[lblSheet2,cboxSheet2]}-{cr2:[lblCol2,txtCol2,lblStartRow2,txtStartRow2,lblEndRow2,txtEndRow2]}-|
H:|-[file2(sheet2,cr2)]-|


outer: staticbox3
H:|-[btnGo(btnQuit)]-[btnQuit]-|
V:|-[btnGo(btnQuit)]-|
    """

    notebook[1].autolayout """
HV:|-[textctrl]-|
    """

    notebook[2].autolayout """
H:|-[txtDo(btnPage3)]-|
V:|-[txtDo]-[btnPage3(=btnPage3.width/2)]-|
    """


panel.wEvent_Size do ():
  #~ goodLayout()
  badLayout()

#~ goodLayout()
badLayout()

frame.center()
frame.show()
app.mainLoop()
