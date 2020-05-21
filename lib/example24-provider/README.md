### Provider
https://flutter.cn/docs/development/data-and-backend/state-mgmt/simple  
https://pub.flutter-io.cn/documentation/provider/latest/

pubspec.yaml配置中，添加依赖  
点击，pub get，下载获取依赖

由于需要引入依赖，因此不支持dartpad网页调试
### Mixin
Mixins are a way of reusing code in multiple class hierarchies  
Mixin，混入，是一种在多重继承中复用某个类中代码的方法模式

Dart为单继承，mixin允许在不直接继承另一个类的基础上，借用/复用这个类中的成员(方法/变量等)  
A with B  
则类A中的成员为AB的集合，重复的取B覆盖

### Creating a ChangeNotifier
创建一个类，mixin混入ChangeNotifier，支持通知所有监听者的，可监听类。类的对象为可监听对象  
类中封装响应式数据的共享数据  
类似于在vuex的state上声明一个响应式数据
vuex可以统一放在一个集合里，但是flutter必须一个一个单独声明

类中封装更新响应式数据的方法，重写getter/setter方法，或单独声明暴露方法。  
在方法中调用notifyListeners()方法，通知所有监听者更新

### Creating Global Provider
flutter是单页面应用，创建的 MaterialApp 组件不会变动  
因此，应用全局Provider，应声明在创建MaterialApp组件对象外层，
即在MyApp组件的build()方法，创建全局Provider

在MyApp组件，声明创建ChangeNotifierProvider
- create，(context) {return Widget}，函数中，创建全局可监听对象
- child，返回MaterialApp

ChangeNotifierProvider在销毁时自动回调ChangeNotifier dispose()方法，
因此可重写dispose()方法释放共享数据中资源

MultiProvider。全局声明多个Provider
- providers，集合。声明多个ChangeNotifierProvider

### Updating Value
在需要执行更新组件的build()方法，
Provider.of\<T\>()，获取可监听的共享数据
- context,
- listen: false，可选参数。获取的共享数据更新时，当前组件是否重绘。
当仅需要操作而非消费共享数据时，不监听

### Consuming value
Consumer/Consumer6\<T\>，支持组件同时获取1-6个共享数据
- builder: (context, ChangeNotifier, child) {return widget}，注入了需要消费的共享数据；
可复用的无需重复渲染的child组件；返回需要绘制的组件

Provider.of\<T\>()，可仅更新而不消费共享数据。即可以在更新后不重绘组件  
Consumer\<T\>()，共享数据更新，必须重绘组件

### Suggestion
建议将需要绑定更新的组件，单独提出创建，挂载

### ChangeNotifierProxyProvider
If you want to pass variables to your ChangeNotifier, consider using ChangeNotifierProxyProvider.
