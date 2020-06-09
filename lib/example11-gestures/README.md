### GestureDetector
许多组件并没有点击事件以及点击效果。  
例如，虽然ListTile封装了点击，但ListView item如果是普通容器或组件，则并没有点击功能

GestureDetector可用于包裹元素，监听点击事件  
GestureDetector有点击功能，但无点击效果
- child，需要包含点击功能的组件
- onTap: () {}，点击回调函数
- onTapDown/onTapUp/onLongPress，等回调

### InkWell
当InkWell内组件声明背景颜色时，InkWell的波纹效果会被遮挡
- splashColor: Colors.greenAccent，波纹颜色
- child，需要包含点击功能的组件
- onTap: () {}，点击回调函数

可以使用Ink包裹InkWell，组件背景颜色设置在Ink

### SnackBar
SnackBar，在屏幕下方显式的，不占用屏幕空间的消息框  
Scaffold.of(context).showSnackBar(SnackBar())方法激活SnackBar  
SnackBar
- content，显式的内容，一般为Text
- action，SnackBarAction，action按钮
  - label，按钮字符串
  - onPressed: () {}，按钮点击回调