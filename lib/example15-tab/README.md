### Tabs
https://flutter.cn/docs/cookbook/design/tabs

Tab，支持左右滑动的，顶部标签导航  
Tab声明在scaffold AppBar中；TabBarView声明在scaffold body中；通过DefaultTabController实现联动

即，页面不再直接创建Scaffold组件，而是包裹DefaultTabController  
DefaultTabController，同步Tab标签与标签内容的控制器(联动)。在无状态widget使用的控制器，包裹scaffold(中的appbar与body用于联动)
- length
- initialIndex，指定初始化时位置。默认0
- child，Scaffold。包裹页面

AppBar bottom属性，声明使用TabBar
- tabs，声明Tab集合
- 其他样式等属性

Tab，标签。一般图标即可
- icon，标签图标
- text，标签名称。字符串
- child，自定义标签。与text不能同时使用

TabBarView，声明在scaffold的body，包裹标签对应的内容
- children，对应标签的内容

TabBar与TabBarView项的个数必须相同

每一个tab均由，一个标签与一个对应的内容组成。因此抽象成独立的类  
创建封装多自定义tab  
通过dart集合函数式操作方法，将集合中元素映射为封装新元素的集合

### PageStorageKey
切换标签时，保存ScrollView(ListView等支持滑动的组件)组件滚动位置  
在ScrollView，通过PageStorageKey()方法显式声明key属性值
