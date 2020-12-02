import 'package:flutter/material.dart';

class FMDataTableVC extends StatefulWidget{

  DataTableList createState() => DataTableList();
}

class DataTableList extends State<FMDataTableVC>{
  List<DataRowModel> _datas = [];
  bool _sortAscending = false;

  @override
  void initState(){
    super.initState();
    initData();
  }
void initData(){
    _datas.clear();
    _datas.add(DataRowModel("诺克萨斯之手", "战士", "90", "93800"));
    _datas.add(DataRowModel("寒冰射手", "射手", "190", "38100"));
    _datas.add(DataRowModel("亚索", "刺客", "190", "33800"));
    _datas.add(DataRowModel("金克丝", "射手", "50", "43800"));
    _datas.add(DataRowModel("剑圣易大师", "刺客", "80", "63800"));
}
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable 详解"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,//滚动方向
        child: _dataTable(),
      ),
    );
  }
  
  DataTable _dataTable(){
    return DataTable(
        columns: _dataColumns(),
        rows: _dataRows(),
        sortColumnIndex: 2,//有箭头的列 只显示箭头
        onSelectAll: (boolValue){

        },
      sortAscending: _sortAscending,//排列顺序
      dataRowHeight: 60,
      headingRowHeight: 100,//顶部row的高度
      columnSpacing: 100,//列间距
      horizontalMargin: 20,//左侧边距
      showCheckboxColumn: true,
      dividerThickness: 3,//分割线的宽度
      );
  }

  List <DataColumn> _dataColumns(){
    List<DataColumn> columns = [];
    columns.add(DataColumn(label: Text("名字")));
    columns.add(DataColumn(label: Text("类型")));
    columns.add(
      DataColumn(label: Text("等级"),
      tooltip: "英雄等级",
        numeric: true,//是否居➡️
        onSort: (index,ascend){
          if(ascend){
            _datas.sort((a,b)=>(int.parse(a.level)).compareTo((int.parse(b.level))));
          }else{
            _datas.sort((a,b)=>(int.parse(b.level)).compareTo((int.parse(a.level))));
          }
          setState(() {
            _sortAscending = ascend;
          });
        },//点击箭头回调
      )
    );
    columns.add(DataColumn(label: Text("战力值")));
    return columns;
  }

  List <DataRow> _dataRows(){
    List<DataRow> rows = [];
    _datas.forEach((row) {
      rows.add(DataRow(
        cells: [
          DataCell(Text("${row.name}")),
          DataCell(Text("${row.type}")),
          DataCell(Text("${row.level}")),
          DataCell(Text("${row.name}"),
          onTap: (){
              print("dataTable ontap");
          },
            placeholder: true,
            showEditIcon: true,//是否展示编辑图标
          ),
        ],
        onSelectChanged: (changed){
          row.onSelected = changed;
          setState(() {

          });
        },
        selected: row.onSelected,
        color: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.selected)){
            return Colors.red.shade100;
          }
          return Colors.grey.shade100;
        }),
      ));

    });
    return rows;
  }

}

class DataRowModel {
  String name;
  String type;
  String zhanli;
  String level;
  bool onSelected = false;
  DataRowModel(this.name,this.type,this.zhanli,this.level);
}

