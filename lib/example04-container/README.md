### SizedBox & Padding & Margin & Center & FittedBox
Padding/Margin，单一容器，仅支持内或外边距，没有高宽/边框等属性  
Center，单元素容器，使内容居中  
SizedBox，单元素容器，支持高宽，无内外边距  
FittedBox，单元素容器，可控制内部元素的缩放

dp，像素密度，设备屏幕尺寸无关的，描述控件间距离等。Flutter默认单位

### Container
Container，单元素容器，支持边框/内外边距/高宽等属性的容器。便于扩展，建议使用
- color，背景色
- height/width
- padding/margin，内外边距，EdgeInsets下的方法声明。
EdgeInsets.only()/EdgeInsets.all()/EdgeInsets.fromLTRB等
- decoration，BoxDecoration。绘制在child后的装饰。更详细的设置
  - color，背景色。Colors/Color
  - image，背景图片
  - border，边框，Border.all(color, width)等方法。或，Border()
    - bottom: BorderSide(color, width)
  - borderRadius，BorderRadius.all(Radius.circular(10))，圆角
  - shape，形状

