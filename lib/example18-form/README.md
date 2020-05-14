### TextFormField/TextField
TextFormField/TextField，为单行输入域。TextFormField支持置于form
- keyboardType，键盘类型，数字/网址/手机号等。TextInputType下的属性
- obscureText，bool，是否为密码框
- maxLength,输入长度。会显式字符长度
- maxLines，行数。默认1，仅显示1行，无换行；null，支持换行
- enabled
- decoration，InputDecoration装饰器，其他辅助性信息
- onChanged/onSubmitted，回调
- cursor，光标颜色/宽度等等

### InputDecoration
InputDecoration
- icon，输入框外
- prefixIcon，输入框内
- labelText，
- hintText,
- helperText,下部文本说明
- border，OutlineInputBorder
  - borderRadius: BorderRadius.circular(20.0),

### Checkbox
Checkbox。默认无label。必须通过回调改变数据状态，重新渲染
- value，值，bool类型。基于值确定选中/未选择样式。
- onChanged，(bool) {}，注入结果，在回调中手动改变自己的value值
- selected，true。字体颜色与选中颜色相同
- 其他默认/激活样式等属性

### CheckboxListTile
CheckboxListTile,默认横向占用最大
- controlAffinity，checkbox显式位置。ListTileControlAffinity下属性，默认基于平台
- title/subTitle/，一般为文本
- secondary，显示在与checkbox相对的另一侧。一般为图标

### Switch
Switch,
- activeColor/activeTrackColor:

### SwitchListTile
SwitchListTile，与CheckboxListTile相似，但没有controlAffinity属性
- title/subtitle/secondary/value/onChanged

### RadioListTile
RadioListTile,默认单独占一行纵向，无法直接将一组置于一行。将每一个项置于容器中例如Expanded
- groupValue，一组radio使用相同groupValue
- value，checkbox/switch值为bool类型。radio可以为任意类型
- title/subTitle/secondary

### Disabled
组件onChanged属性，为null时为disabled状态

### OutlineButton
OutlineButton
- textColor/color/highlightColor/splashColor，字体/背景/点击/波纹
- shape: RoundedRectangleBorder，边框圆角。与card的使用相同
  - borderRadius: BorderRadius.circular(15.0)
- onPressed: () {}

###  DropdownButton
DropdownButton，下拉菜单
- hint
- icon,下拉图标。默认倒三角
- items\[\],DropdownMenuItem项集合
- value，选中item的值
- onChanged(value) {}

DropdownMenuItem，DropDownButton子项
- value
- child

### BackButton/CloseButton
BackButton/CloseButton，均封装了默认图标以及弹栈操作  
BackButton一般用于路由；CloseButton一般用于关闭覆盖窗口(dialog/ModalBottomSheet)

### Form
表单。管理内部FormField输入域，校验提交数据等统一操作  
对switch/checkbox等无效

form表单key属性，绑定GlobalKey<FormState>()  
key.currentState，获取FormState对象
- validate()，回调formField的validator函数，实现提交前的统一校验
- reset()



