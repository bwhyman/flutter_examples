# Dart
### Basic
Dart中一切皆对象。函数，也是一个Function类型的对象；
null也是对象；所有对象均继承自Object类型  
Dart是强类型语言，变量声明时支持类型自动推导，但必要时也需显式声明类型  
注释  
var，声明变量  
无public/private等访问限定符，私有/局部变量/函数以"_"下划线前缀命名  
单引号声明字符串  
$varibleName/${expression}，可在字符串中直接包含变量，或表达式  
final，声明为常量，只能赋值一次  
const，编译时就必须确定的常量，一般为有字面量的常量，或引用不变的对象  
常量建议使用小驼峰命名，而非全大写  
int/double，由于是对象，因此直接包含了取绝对值，四舍五入等方法  
多行字符串  
转义符  
bool，布尔值  
list集合
```
var list = [1, 2, 3];
list.length;
```
{key: value }，Map键值对，获取的写法类似js

### Functions
函数，Function类型的对象  
main()，程序的入口，顶级函数，与C语言一样无需类  
可以不显式声明返回类型
```
main() => runApp(MyWedget());
```
_，声明为私有函数

###  Optional parameters
构造函数/函数的必选参数在前，可选命名参数在后，通过{ }声明可选参数  
没有赋值的可选参数，默认值为null  
参数的默认值

### Operators
as，(emp as Person).firstName = 'Bob'; 类型转换  
is，对象类型判断  
??，空判断
```
// 如果name不为null，返回name；为null返回guest
String playerName(String name) => name ?? 'Guest';
```
..，方法级联操作符，忽略方法的返回值，直接调用，无需每次均指定变量调用
```
querySelector('#confirm') // 获取对象 (Get an object).
  ..text = 'Confirm' // 使用对象的成员 (Use its members).
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));
```
assert，断言，在结果不满足时打断程序的执行，生产环境下不会执行  
?.，调用实例级变量/方法，可避免空指针

### Control flow statements
for-in 形式的迭代

### Classes
mixin 继承机制  
创建对象，无需new操作符，直接调用构造函数  
单继承
```
var p = Point(2, 2);
// 为实例变量 y 赋值。
p.y = 3;
// 如果 p 为非空则将其属性 y 的值设为 4
p?.y = 4;
```
省略getter/setter  
构造函数初始化属性的语法糖
```
class Point {
  num x, y;

  // 在构造函数体执行前用于设置 x 和 y 的语法糖。
  Point(this.x, this.y);
}
```
命名构造函数  
在构造函数体前，调用父类构造函数
```
class Employee extends Person {
  Employee() : super.fromJson(defaultData);
  // ···
}
```
类静态方法与变量

### Structure
https://dart.cn/guides/libraries/create-library-packages