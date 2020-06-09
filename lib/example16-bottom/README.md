### BottomNavigationBar
BottomNavigationBar，在Scafford bottomNavigationBar属性声明。  
当底部按钮超过3个，无默认颜色，需手动设置
- type: BottomNavigationBarType.shifting，当多于3个时，显式图标，激活项显式文本，动画。fixed，固定显式图标与文本
- selectedXXX: 选中项设置。颜色/字体/图标大小等
- unselectedXXX: Colors.orange,未选中项设置
- onTap: (int index) {},点击回调函数。注入点击items的索引
- currentIndex: _currentIndex，动态绑定当前索引
- items: BottomNavigationBarItem集合

BottomNavigationBarItem，BottomNavigationBar中的具体导航组件子项
- icon，图标
- title，文本
- backgroundColor

### IndexedStack
在Scafford body声明IndexedStack/PageView容器，响应下导航按钮  
创建可以保持状态的有状态组件包裹Scaffold

IndexedStack，基于索引index值，自动加载children中相同位置的组件
- children，与下导航对应的内容组件集合
- index，动态绑定应显式的，内容组件集合的索引

联动切换  
IndexedStack不支持滑动操作，只能通过BottomNavigationBar实现切换  
当点击BottomNavigationBar，获取被点击item的索引位置，通知组件状态更新  
IndexedStack基于新索引加载组件

### PageView
PageView，与IndexedStack相似的可切换不同内容的容器，默认支持左右滑动与动画效果  
PageView.builder()。与ListView.builder()相似
- initialPage，初始索引
- itemCount，项的个数
- itemBuilder(context, index) {return }，构建项的函数，注入当前索引
- onPageChanged(int index) {}，切换回调函数。注入当前项的索引

联动切换  
BottomNavigationBar/PageView均可切换组件，且通过一种方法切换必须通知另一组件更新  
因此，无论通过BottomNavigationBar还是PageView切换，均改变当前显式项的索引  
索引改变，BottomNavigationBar自动更新  
索引改变，PageView itemBuilder返回响应索引对应的item

