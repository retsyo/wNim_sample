#[
  1. don't know whether an item is checked
  2. don't know how to set an item to be checked
  2. don't know how to set only one item can be checked

]#

import strformat, wNim

let app = App()
let frame = Frame(title="Hello World", size=(400, 300))
let tree = TreeCtrl(frame, style=wTrHasLines or wTrCheckBox or wTrHasButtons or wTrTwistButtons)
let root = tree.addRoot("The Root Item")

var child: wTreeItem
for i in 0..5:
  child = tree.appendItem(root, fmt"Item {i:d}")
root.expand()

var dragItem: wTreeItem

tree.wEvent_Tree_Begin_Drag do (event: wEvent):
  event.allow()
  dragItem = event.getItem()

tree.wEvent_Tree_End_Drag do(event: wEvent):
  var target = event.getItem()
  var source = dragItem
  var newTreeItem = tree.insertItem(root, target, source.getText())
  source.delete()
  newTreeItem.select()

#~ echo root.isItemChecked(child)
frame.center()
frame.show()
app.mainLoop()
