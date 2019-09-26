import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/area_picker.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  Map selectArea;

  ///接收选择的结果
  void handleSelect (Map targetArea) {
    setState(() {
      selectArea = targetArea;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('省市区三级联动'),
        centerTitle: true,
      ),
      body:Container(
        padding: EdgeInsets.only(top: 50.0),
        child:  Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Text(selectArea != null ? selectArea['address'] : '未选择...'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    showBottomSheet(context: context, builder: (_)=>Container(
                      height: 300.0,
                      child: AreaSelection(
                        onSelect: handleSelect,
                        initProviceIndex: selectArea == null ? 0 : selectArea['proviceIndex'],
                        initCityIndex: selectArea == null ? 0 : selectArea['cityIndex'],
                        initCountyIndex: selectArea == null ? 0 : selectArea['countyIndex'],
                      ),
                    ));
                  },
                  child: Text('点击选择省市区'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
