### Dialog
https://api.flutter.dev/flutter/material/AlertDialog-class.html

对话框Dialog。透明阴影覆盖，标题栏/内容自带外边距，尽量简洁

AlertDialog。
- title，标题区。一般为Text
- content，内容区。可以是复杂的容器
- elevation，阴影
- actions \[\]，按钮执行区。默认右对齐，建议使用FlatButton

SimpleDialog。一般没有执行按钮
- title，标题
- elevation，阴影
- children，自定义子项，或SimpleDialogOption

SimpleDialogOption。简单的单选
- onPressed
- child

### showDialog
showDialog，是一个函数，但函数也是Function类型。当执行某操作时，点击按钮等，创建showDialog对象
- context: context，必选参数
- barrierDismissible，是否允许点击其他关闭对话框
- builder: (context) {return Widget}。创建对话框

### close the dialog
showDialog barrierDismissible属性。允许点击非dialog区域关闭，类似web的css+js的实现  
Navigator.of(context).pop()。弹出


### FlatButton & RaisedButton
FlatButton，文字按钮，一般用于弹出的窗口，ok/cancel/accept等  
RaisedButton，凸起悬浮按钮  
FlatButton/RaisedButton，均包含child/color/textColor/onPressed等属性