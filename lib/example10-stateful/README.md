### StatefulWidget
https://flutter.cn/docs/development/ui/interactive

为了构建更复杂的体验响应用户互交，需要保存改变一些组件的数据状态  
Flutter提供StatefulWidget实现。StatefulWidget是一种特殊的组件，它会生成并维护一个State对象，用于保存数据状态

创建过程
- 创建有状态组件
- 创建对应的，管理组件数据状态的状态管理组件
- 重写有状态组件的createState()方法
- 重写state类的initState()方法，初始化数据(可选)。
类似vue的created()回调，完成组件创建时的异步网络请求等
- initState()回调函数中，必须首先调用父类initState()
- 重写state类的build方法，构建组件
- 在任何回调函数中，执行setState((){})方法通知组件数据状态改变
- 回调State build()方法重绘组件

build()方法会在每次重新渲染时回调，因此不能在此方法中执行初始化！

### floatingActionButton
绝对定位在指定位置的按钮  
可在Scaffold中的floatingActionButton属性声明
- floatingActionButton: FloatingActionButton()，声明一个浮动按钮
  - child: Icon(Icons.add)，一般为图标
  - onPressed，点击回调函数

Scaffold中的floatingActionButtonLocation属性，可声明浮动按钮的位置
- floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat，声明位置

### Suggestion
当状态改变时，有状态组件将被重新绘制。因此，仅将必要的，内容会改变的组件声明为有状态，可提高渲染速度  
例如，如果直接将MyApp创建为有状态，则其内任何组件对数据状态的改变，  
都会从MyApp对象节点开始到其内的所有组件重新创建，重绘  
但是，flutter内部也会智能判断，组件是否需要重新创建  
可以将2个需要互交控件的父组件，声明为有状态组件，传递信息

StatefulWidget，适用于简单的状态处理。类似vue组件内部声明的，仅在组件内使用的响应式数据的方法

复杂的，涉及影响到多个组件数据状态变化时，应使用Provider，类似vuex的全局单一数据源解决方法

### BuildContext
widget对象是不可变对象(引用不可变，封装的属性对象可变)  
其封装着需要渲染的元素element对象，以及若干属性的对象  
实际需要在组件树上渲染的，是element对象，而非widget对象
因此，重新渲染widget时，并不是重写创建widget组件对象，而是重写创建其对应的element对象。即，回调build()方法

创建widget对象后，基于widget对象创建element对象  
element对象同时持有widget对象引用  
将element对象添加到element树上  
element实现了BuildContext接口(dart中，类即接口)  
element对象回调widget build方法，将自己以BuildContext类型传入  
因此，BuildContext对象，就是element元素对象  
所以，可以在state对象的build方法中，直接使用widget对象
