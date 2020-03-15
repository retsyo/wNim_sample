#[
  1. since the old item is moved to below the target, so how to add an underline below the target to indicate the direction?
  2. is it possible to add the item's text below mouse during moving? For example, I have chosen "Item 3" by left mouse click, then "item 3" is always shown below the mouse cursor before I release mouse button.

]#
import strformat, wNim

let app = App()
let frame = Frame(title="Hello World", size=(400, 300))
let tree = TreeCtrl(frame, style=wTrHasLines)
let root = tree.addRoot("The Root Item")

for i in 0..5:
  var child = tree.appendItem(root, fmt"Item {i:d}")
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

frame.center()
frame.show()
app.mainLoop()
