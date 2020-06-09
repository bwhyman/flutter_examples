### Controller
Flutter提供了多种监听组件状态改变的控制器controller  
TabController/TextEditingController/ScrollController等

一般在有状态组件中使用controller  
各种类型的controller对象均提供addListener(() {})方法，注册监听回调函数  
在initState()中，声明controller的监听回调函数  
在dispose()中，释放controller资源  
绑定组件中的controller属性(只有特点组件有此属性)  


### TextEditingController
https://flutter.cn/docs/cookbook/forms/text-field-changes#2-use-a-texteditingcontroller

TextEditingController，文本编辑控制器，可监听文本输入域。比onChanged回调更强大
- text，输入域中的文本
- value，TextEditingValue对象

### ScrollController
ScrollController，滑动控制器，可监听组件的滑动
- offset，相对位置的滑动偏移量
- position，ScrollPosition对象，可以获取实际滑动偏移量
- animateTo(double offset, {Duration duration, curve: Curves.ease})，以指定延迟指定执行效果从当前位置过渡到指定位置
  - offset，偏移量
  - Duration，延迟，支持日/时/分/秒/毫秒
  - 执行效果
- jumpTo

### MediaQuery
通过MediaQuery，可以获取宽高/横竖屏/像素密度比等信息等数据，从而适配应用  
MediaQuery.of(context).size，获取封装height/width属性的Size对象

