### Networking
https://flutter.cn/docs/cookbook/networking/fetch-data  
pubspec.yaml引入http依赖，pub get拉取

### http
添加http包  
声明实体类，及构造函数，属性赋默认值，可实现加载组件渲染空数据  
声明工厂方法factory，将传入是Map对象，转为对象  
创建异步方法，执行http请求

添加dart:convert包  
json.decode()方法将响应的json字符串，转为Map对象转为实体对象

网络请求应考虑异常的处理

模拟github数据。网络环境，api.github.com可能无法访问  
http://114.115.206.11:8080/api/users/bwhyman  
http://114.115.206.11:8080/api/users/bwhyman/repos  
https://api.github.com/users/bwhyman  
https://api.github.com/users/bwhyman/repos

### http.Client
如需一次发出多个请求  
可创建使用client对象，多次调用请求方法，但client对象需手动close()释放

### json serialization
https://flutter.cn/docs/development/data-and-backend/json

flutter中禁用Dart反射。无法像Java平台的Jackson等通过动态反射直接创建指定类型对象  
可以通过工具插件，基于配置生成包含fromJson()/toJson()方法的静态代码