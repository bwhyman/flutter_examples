### ListView
https://flutter.cn/docs/cookbook/lists/basic-list

可以用来放置一组相似的组件，或当内部元素过长而自动滚动的容器  
与column相比，支持长度超过一屏的滚动  
项默认不直接支持点击  
Divider()，分割线，可作为项直接使用  
ListView，当项固定时，可直接基于children属性构建
- padding，ListView的内边距，不是项的内边距
- shrinkWrap，用于item高度不确定时，适配item内容高度，避免内容溢出
- itemExtent，可固定item高度，超过会异常

### Work with long lists
https://flutter.cn/docs/cookbook/lists/long-lists

动态生成ListView，需要  
ListView.builder()，支持内边距等，但没有分割线。自动循环itemCount次，创建itemBuilder中返回的item
- itemCount，项的数量
- itemBuilder: (BuildContext context, int index) {return }，构造项的函数，返回每一个项。自动注入context以及项的索引

ListView.separated()，带分割线的静态方法，包含以上属性相同
- separatorBuilder: (BuildContext context, int index) {return Divider()}，自定义分隔符

### ListTile
https://api.flutter-io.cn/flutter/material/ListTile-class.html  
ListTile，简单常用的左/上/下布局的组件。可作为ListView的项，也可单独使用。可仅声明需要的部分
- leading，一般置一个Icon
- title，一般置一个文本，默认加粗
- subTitle，一个文本
- trailing，尾部右对齐控件，一般为icon
- onTap，() {}。点击回调函数，自带波纹效果。不声明没有点击的波纹效果

leading与title/subTitle不自动居中对齐！

### Icon
http://micon.dxbtech.cn/

Icon，图标，flutter内置Material图标
- 第一项必填，Icons下的常量
- color，颜色，Colors下的常量
- size，尺寸