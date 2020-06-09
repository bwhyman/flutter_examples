### Navigation
https://flutter.cn/docs/development/ui/navigation

MaterialApp routes属性。Map<String, Widget Function(BuildContext)>  
键：字符串，路由名称；值：返回路由组件的函数  
/，默认路由名称。即首页  
路由是指大功能“页面”的切换，而非页面内组件的切换  
因此，路由切换的是包含AppBar在内的，不同的Scaffold对象的页面  
不支持嵌套路由。页面与PC的页面有明显的尺寸差距，不适合复杂的路由


###  Navigator
Navigator.pushNamed(BuildContext, String, {arguments: Object})
- BuildContext
- String，路由名称
- arguments，可选，传递参数

如果路由栈顶组件声明了AppBar，且leading为空。
则自动添加返回箭头图标；显式声明了leading，则不会覆盖

Navigator.popAndPushNamed()。不保存在路由栈的路由。即返回时不会此页面

### Return
Navigator.of(context).pop(\[T t\])  
弹出路由栈顶页面，即返回上一页面。可以声明返回携带的参数

### Navigate With Arguments
final T t = ModalRoute.of(context).settings.arguments;
可在路由组件接收传入的参数

接收返回参数。可在调用时，Navigator.pushNamed().then<T>((t) {return t})，获取返回结果  
then()方法返回异步的Future类型函数，类似JS的Promise  
重写泛型，回调函数返回结果

但按设备返回键，需单独监听  
较复杂，建议通过Provider实现