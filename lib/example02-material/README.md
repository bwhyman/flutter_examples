# Using Material Components
https://flutter.cn/docs/development/ui/widgets-intro#using-material-components

需引入文件，别引错路径

MaterialApp，是支持Google Material样式的组件，应用以此开始
- title，应用在任务管理器中显式的标题，不是应用页面标题栏的标题
- theme，应用样式主题，主题颜色等。默认与当前android系统版本主题色调相同，
不同android版本的主题色调不同
- home，整个应用的root根组件，一般为scaffold对象

Scaffold，是包含若干初始化属性声明的手脚架  
包含标题栏/主内容/浮动按钮/下导航按钮组/左右侧滑等内置属性，可以快速构建app应用
- appBar，标题栏，默认没有，可创建一个空的
- body，主内容，只能放一个控件，因此得嵌入容器中
- bottomNavigationBar，底部导肮

等等属性，后期讨论  
80%的代码，基于构造函数创建所需类型对象，为对象的属性继续创建所需对象。写法类似于构造js对象
