### Lake
https://flutter.cn/docs/development/ui/layout/tutorial

创建images目录，在pubspec.yaml中，声明本地资源目录

Image.network()/Image.asset()从网络/本地资源获取图片
- 第一项必填参数，图片网络地址/本地资源地址
- fit，填充方式，与css的object-fit相似。BoxFit下的枚举常量
  - fill，按容器拉伸填充
  - contain，原比拉伸填充
  - cover，原比拉伸，剪裁，填充
  - fitWidth/fitHeight，按指定拉伸，剪裁

FittedBox容器包裹Image也可

### lake Layouts
不使用appbar；每个区域，通过声明单独的私有方法实现  
ListView，作为最外层容器
- 图片区。自动拉伸适应容器
- 标题区。container，通过内边距控制内部元素与边框距离，包含1 row
  - 第1个元素，占用最大。包含2 column
  - 第2/3个元素。icon，text
- 按钮区。container，通过内边距控制内部元素与边框距离，包含1 row
  - 每个元素，2 column，icon，text
- 文本区。将text置于container，控制边距。两端对齐

