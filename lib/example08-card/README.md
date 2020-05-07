### Card
https://flutter.cn/docs/development/ui/layout#card

Card，包含形状阴影等。可嵌入container中使用
- margin，没有padding。在空间固定，即无法将其他元素推走时，margin/padding相同
- shape，card的形态样式。常用RoundedRectangleBorder类型对象
  - borderRadius: BorderRadius.circular(15.0)，圆角
-  color: Colors.pink，背景色
- elevation: 24，Z轴悬浮出的高度，阴影
- child，单一子项。因此一般需要嵌套其他容器

### ButtonBar
ButtonBar，按钮栏。可包含多个按钮的容器，便于统一布局管理  
按运行的android系统版本，表现不同样式。例如左/右对齐，紧凑等
- alignment: MainAxisAlignment.start。声明按钮子项的对齐方式
- children

### IconButton
IconButton，图标按钮
- icon: Icon(Icons.play_arrow)，按钮的图标
- color: Colors.white，按钮颜色
- onPressed: () {},点击回调，不声明没有点击的波纹效果

