### DataTable
DataTable
- columns，\[DataColumn\]。表头部分，表头列DataColumn
  - label，列标题名称
  - numeric，默认左对齐，不占用最大空间。true，右对齐
- rows，\[DataRow\]

DataRow。数据行，DataRow
- cells，\[DataCell\]

DataCell。行中的列数据，DataCell
- child，列。文本，或容器等
- onTap

### Selected
DataRow，选中是数据行DataRow的行为
- selected: bool，当前选中状态
- onSelectChanged: (bool v) {}，标题以及行显示checkbox，改变回调。当改变columns中选中状态，回调全部rows中函数

### Sorted
DataTable，排序是表头DataColumn的行为
- sortColumnIndex，columns中，当前排序的列
- sortAscending，true，降序。排序功能需自己实现。下箭头升序，上箭头，降序。箭头方向，从小到大
- columns，\[DataColumn\]。表头部分，表头列DataColumn
  - onSort: (index, bool ascending) {}，当前列的索引，当前排序方式。

通过onSort回调，确定指定列以什么方法排序，绑定sortColumnIndex/sortAscending在指定列显示升降序标识

### SingleChildScrollView
SingleChildScrollView，表格横向过宽时，包裹DataTable的容器，支持左右滑动。纵向应置于ListView等容器
- scrollDirection: Axis.horizontal,
- child: DataTable