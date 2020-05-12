### NestedScrollview
基于Scaffold的appbar+listview布局，listview的滑动不会影响到固定的appbar

但，当需要appbar随下部的listview的滑动而显示/隐藏/改变时，则需要将他们置于一个
统一管理的，支持滑动联动的容器中。
- CustomScrollView，是可定制的管理滚动的容器
- NestedScrollView，是基于CustomScrollView并已实现部分功能的容器

且，普通组件不支持滑动统一管理，  
flutter提供了独立的基于sliver的控件：  
SliverAppBar/SliverList/SliverGrid/SliverFillRemaining(不随滑动的部分)等等。  
将以上所需sliver组件对象，slivers属性

即，Scaffold不再单独声明appBar属性，由body属性包含NestedScrollView，NestedScrollView中包含支持联动的appbar以及body  
NestedScrollView，
- headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {return SliverAppBar()}。创建支持滑动联动的SliverAppBar
- body，支持滑动联动的内容容器
- controller，滑动监听回调函数

### SliverAppBar
https://api.flutter-io.cn/flutter/material/SliverAppBar-class.html

SliverAppBar，支持滑动联动，具有自动弹性伸缩/隐藏功能的AppBar
- primary，true，是否预留系统的状态栏
- expandedHeight: 200，声明高度；
- pinned: true，向上滑动时，保留SliverAppBar的title/leading等信息，自动缩放title中文字。false，不保留SliverAppBar
- floating: false，当不在最顶端而向下滑动时，是否渐出appbar(无效了？)
- snap: false，只在floating true时有效。appbar默认出现效果为渐出。snap true，appbar为弹出效果
- flexiblespace，FlexibleSpaceBar()，sliverappbar容器
- bottom，底部，可放置tab。位置与FlexibleSpaceBar中的title重叠

SliverAppBar的其他属性，许多与AppBar相同
- leading
- title
- actions
- bottom
- forceElevated: true,展开flexibleSpace之后是否显示阴影
- automaticallyImplyLeading: true。没有leading，当有侧边栏的时候，false：不会显示默认的图片，true 会显示默认图片，并响应打开侧边栏的事件。如果有leading，忽略；

### FlexibleSpaceBar
FlexibleSpaceBar，在SliverAppBar中随滚动自动隐藏的容器，不能是普通的card等容器
- background，相当于child。可以是基本颜色/图片。也可将内容封装到card等容器
- title，标题容器。默认下部居中，滑动时支持置顶保留。与SliverAppBar bottom位置重叠

### CustomScrollView
https://api.flutter-io.cn/flutter/widgets/CustomScrollView-class.html

更复杂的自定义滑动容器。组合SliverAppBar/SliverList/SliverGrid等

### SliverList
- SliverList，滑动联动列表组件
  - delegate，SliverChildBuilderDelegate((BuildContext context, int index) {return Container()}, childCount)，
  第一项为必填的构造项的回调函数，返回项；childCount，项的个数