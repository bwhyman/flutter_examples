### SharedPreferences
https://flutter.cn/docs/cookbook/persistence/key-value

pubspec.yaml添加插件依赖，shared_preferences

shared_preferences，
是整合封装了iOS NSUserDefaults/Android SharedPreferences操作的持久化插件  
为简单的基本数据类型提供持久化存储  
Android平台，数据以键值对保存在xml文件，文件保存在/data/data/应用包/shared_prefs/

类似于可以置于springboot配置中的键值对数据，非复杂大量的数据

基本数据类型，int/double/bool/string/stringList

SharedPreferences.getInstance()，获取SharedPreferences对象。必须在异步方法中执行
- getter/setter，对以上基本数据类型的获取/修改操作
- remove

加载组件时弹出对话框，必须在异步操作中执行  
可以将创建操作置于Future，或异步方法
Future.delayed(Duration.zero, () {showDialog()})
