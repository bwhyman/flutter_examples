### AppBar
https://api.flutter-io.cn/flutter/material/AppBar-class.html  
https://flutter.cn/docs/catalog/samples/basic-app-bar  

应用栏。可通过Scaffold中的appBar属性声明  
AppBar是固定高度/布局的，应用栏组件。类似的，提供的常用ListTile组件
- leading: 一般为图标/按钮图标
- title: 一般为text
- actions: \[IconButton ... PopupMenuButton\]，标题后的组件集合。一般为常用功能的按钮图标，和缩略不常用功能
- elevation/centerTitle
- bottom

Scafford appBar仅接受PreferredSizeWidget类型，不能使用普通的statelesswidget组件  
因此，在MyHomePage中通过方法创建AppBar。也可直接继承AppBar；实现PreferredSizeWidget接口等方式实现

可通过PreferredSize嵌套AppBar自定义高度
- preferredSize: Size.fromHeight(50.0),
- child

### PopupMenuButton
https://api.flutter-io.cn/flutter/material/PopupMenuButton-class.html

PopupMenuButton，弹出式菜单按钮
- icon，默认为缩略图图标
- itemBuilder: (context) {return \[PopupMenuItem\]}，创建子项集合的函数。自动注入context对象
- onSelected (value) {}。PopupMenuButton中的项被选择后回调。注入PopupMenuItem的值

### PopupMenuItem
PopupMenuItem，菜单项。不包含点击等回调，仅支持声明数值，当值改变时激活菜单栏onSelected回调函数(后期讨论)
- value，值
- child，项，可以是基本text/listtile，或自定义

PopupMenuDivider，item的分割线



