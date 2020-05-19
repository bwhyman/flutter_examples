### RefreshIndicator
RefreshIndicator,下拉刷新组件。顶部下拉时，显式刷新进度条。
- child，可包裹ListView等容器
- onRefresh，Future\<void\> () {return Future}。必须返回Future回调函数

### AnimatedList
AnimatedList，支持动画效果的ListView
- key，绑定一个GlobalKey\<AnimatedListState\>()
- initialItemCount，静态初始化时数量，无动画效果。仅在初始化时执行1次
- itemBuilder: (context, index, animation) {return widget}，创建支持过渡动画效果的组件；注入插入/移除动画效果对象

### SizeTransition/SlideTransition/ScaleTransition
SizeTransition，移动过渡效果展示内部组件
- sizeFactor，Animation。绑定动画
- child

ScaleTransition，缩放过渡效果
- scale
SlideTransition，支持左/右滑动展示内部组件

### AnimatedListState
GlobalKey\<AnimatedListState\>下的currentState属性获取当前AnimatedList的AnimatedListState对象  
AnimatedListState提供的带过渡效果改变list的方法  
自动调用AnimatedList itemBuilder()方法，指定位置插入/移除组件，注入插入/移除动画
- insertItem(int index, {Duration duration: _kDuration})
- removeItem(int index, AnimatedListRemovedItemBuilder builder, {Duration duration: _kDuration})

添加数据，调用以上方法，无需执行setState()方法通知更新

移除动画是异步延迟操作，必须先移除组件，后删除数据  
先删除数据，组件可能产生数据渲染错误  
因此建议将数据封装为对象