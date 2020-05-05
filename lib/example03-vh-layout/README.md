### Layout
https://flutter.cn/docs/development/ui/layout

flutter组件，默认均不包括内/外边距/高宽属性。  
因此，当需要内外边距边框时，需要置于容器中。  
但flutter本身没有区分组件与容器，容器也是组件，一切皆为组件

有的容器仅能放单元素；单元素容器；有的可以放多个元素，多元素容器。通过提供的属性可以判断
- child
- children

### Row & Column
https://flutter.cn/docs/development/ui/layout#lay-out-multiple-widgets-vertically-and-horizontally

row，多元素容器，声明一个行。行中的组件在一行横向排列  
column，多元素容器，声明一个列。列中的组件在一列纵向排列  
mainaxis/crossaxis，主轴/交叉轴，与排列方向有关。即，row的主轴为X轴，column的主轴为Y轴  
默认row/column容器，均占用其主轴的最大空间，即父元素的空间  
但当其内部元素，他元素/容器阻挡/约束时，为需要多大占多大(包裹)
- mainAxisSize，MainAxisSize.min，wrap，包裹，仅占用所需空间
- mainAxisAlignment，MainAxisAlignment，子项对齐方式，剩余空间的分配
  - spaceBetween，2端对齐
  - spacearound，每个元素占用相等剩余空间，包括第一/最后，的2端
  - spaceEvenly，剩余空间均匀分布在每个元素之间
  - ...
- crossAxisAlignment，CrossAxisAlignment，交叉轴对齐方向
- children，集合，其中的多个组件

练习  
自定义widget，封装Text，包含字体大小/颜色
### Texts
Text，文本
- 第一项必填，字符串文本内容
- textAlign，字体对齐方向
- style，样式，TextStyle
  - color/fontSize/fontWeight/fontStyle，等等字体样式属性，size默认14

### Expanded
Expanded，单元素容器。在主轴，占用尽可能大的剩余空间，类似match_parent  
会忽略掉mainAxisAlignment对齐方式的布局  
当元素内容超过设备屏幕尺寸时，可用于包裹限制元素(FittedBox也可)
- flex，当多个expanded并列时，声明占用剩余空间的比重

row/column/expanded，内容超出屏幕，均不支持滚动