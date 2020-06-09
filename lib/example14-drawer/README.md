# Navigation
Google Material Design顶级导航。一般为在应用首屏中固定的，收纳二级子功能的组件。包括
- Tab，上标签导航，适合>=2 <=6个子项
- Bottom navigation bar，下按钮组导航，适合<=5子项
- Navigation drawer，抽屉导航，适合需要收纳较多2级菜单，或不常用功能

顶级功能范围：Drawer > Bottom > Tab。应用顶级导航，按需求选择以上1种即可。  
Drawer可以路由切换到带Bottom/Tab的组件。但不建议Bottom/Tab之间再嵌套使用

### Drawer
https://flutter.cn/docs/cookbook/design/drawer

Scafford drawer/endDrawer属性。自动支持左/右滑动，自动在appbar添加抽屉图标  
Drawer，可以包裹ListView。padding设为0，可保留状态栏背景色

DrawerHeader，适应于drawer header的容器，方便直接使用。
内部元素默认垂直居中
- padding，默认EdgeInsets.fromLTRB(16, 16, 16, 8)
- decoration，声明header背景色/背景图片等
- child，可声明一列，在列中声明头像/标题/子标题

### CircleAvatar
CircleAvatar，封装支持圆角的头像图片。不支持按容器自动缩放，需嵌入到FittedBox容器  
但FittedBox不支持设置高宽，需嵌入到Container
- backgroundImage，图片
- radius: 100,圆角半径
- backgroundColor/foregroundColor

...，对象扩展符。扁平化嵌套的集合元素  
Navigator.pop(context)方法，显式关闭drawer  
Scafford body内容，通过切换路由实现

### Factory constructors
不同页面的scaffold均使用相同的drawer，因此可创建单例drawer对象使用  
使用 factory 关键字标识类的构造函数，将使构造函数变为工厂构造函数  
与java的单例设计相似，创建私有静态对象，在factory构造函数中返回  
外界通过工厂构造函数返回单例对象



