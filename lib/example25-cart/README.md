### Cart
结合Provider/Route等，实现的购物车  
models，整合了实体类/业务操作/的模型，可监听  
screens，视图页面，独立的Scafford组件  
main，入口，声明路由规则/共享数据

### Model
catalogmodel文件  
Product类，商品类型，实体类  
CatalogModel类，商品列表业务操作，在合适操作通知监听者更新
- setProducts()，更新商品列表，通知
- get products，获取全部商品列表

cart文件  
Item类，购物车中类型，封装商品及对应数量，实体类  
CartModel类，购物车业务操作。包括  
- addItem()，向购物车添加商品，判断购物车中商品是否已存在，更新数量，通知
- removeItem()，移除商品，判断商品数量，通知
- getItemCount()，获取指定商品数量
- get items，获取购物车中商品列表
- 渲染ProductList/TotalPrice组件

### Screen
cart  
MyCart，购物车页面，可分别声明AppBar/List组件  
ItemList，详细购物商品组件，监听cart更新

catalog  
Catalog，商品列页面。AppBar中声明购物车导航按钮  
ProductList，商品展示组件  
Provider.of()，必须在build()方法中执行
- Provider.of\<CatalogModel\>(context)，获取CatalogModel共享数据，
同时需要响应CatalogModel更新，因此启动CatalogModel的监听
- Provider.of\<CartModel\>(context, listen: false)，获取CartModel共享数据，向购物车添加/移除商品，
但无需响应CartModel更新，因此不启动CartModel监听
- 重写initState()，异步加载获取商品列表，添加至CatalogModel，而非直接通知组件重绘

ProductList组件样式
- 判断商品列表，为空，显示加载组件；否则显示商品列表
- 添加/移除按钮，执行方法，将当前商品添加/移除购物车
- ItemCount组件

ItemCount，显示商品购买数量组件
- Consumer\<CartModel\>()，消费购物车共享数据CartModel，基于传入的商品，获取购物车中数量

TotalPrice，底部显示购买商品总额组件
- Consumer\<CartModel\>()，消费购物车CartModel，获取计算后的花费总额

### CircularProgressIndicator/LinearProgressIndicator
CircularProgressIndicator
- value，进度值。进度值为null，一直转动
- valueColor，进度值颜色
- backgroundColor,
- strokeWidth，线条粗细

### FutureBuilder
FutureBuilder
- future
- builder: (context, snapshot)


