#[
  1. is there a way to set space between items? between image and item text?
  2. we can find that the source item is drawn under mouse which is expected, but it does not in question 2 in the previous post
  3. just a note, if we use an icon image, for example
        lstImage.add(Image("Default.jpg"))
      then there is no image in the tree. I don't know whether it is bug or feature
  4. as for ImageList, the size must <= image.size

  5. I don't know is it the following enought, because the following document is too long
  https://docs.microsoft.com/en-us/windows/win32/controls/drag-a-tree-view-item
]#

import strformat
import wNim

let app = App()
let frame = Frame(title="Hello World", size=(400, 300))
let tree = TreeCtrl(frame, style=wTrHasLines)
let root = tree.addRoot("The Root Item")

var lstImage = ImageList(24, 24)
lstImage.add(Image("Default.jpg"))
lstImage.add(Image("flag_australia.png"))
lstImage.add(Image("flag_austria.png"))
lstImage.add(Image("flag_bangladesh.png"))
lstImage.add(Image("flag_belgium.jpg"))
lstImage.add(Image("flag_brazil.png"))

tree.setImageList(lstImage, wImageListNormal)
#~ tree.setItemSpacing(48 + 25, 48 + 25)

var child: wTreeItem
for i in 0..5:
  child = tree.appendItem(root,
    fmt"Item {i:d}",
    image = i+1
  )

root.expand()

#  Event proc
var dragItem: wTreeItem
tree.wEvent_Tree_Begin_Drag do (event: wEvent):
  event.allow()
  dragItem = event.getItem()

  dragItem.setDropHighlight()

tree.wEvent_Tree_End_Drag do(event: wEvent):
  echo( "OnEndDrag")

  #~ # If we dropped somewhere that isn't on top of an item, ignore the event
  var target: wTreeItem
  if event.getItem().isOk():
    target = event.getItem()
    echo target.getText()
  else:
    return

  # Make sure this member exists.
  var source: wTreeItem
  try:
    source = dragItem
  except:
    return

  var newTreeItem = tree.insertItem(root, target, source.getText(), source.getImage())

  source.delete()

  newTreeItem.select()

# main loop
frame.center()
frame.show()
app.mainLoop()
