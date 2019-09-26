import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/area_model.dart';

class AreaSelection extends StatefulWidget {

  final Function onSelect;
  final int initProviceIndex;
  final int initCityIndex;
  final int initCountyIndex;

  AreaSelection({Key key, @required this.onSelect, this.initProviceIndex, this.initCityIndex, this.initCountyIndex}) : super ( key : key);

  @override
  _AreaSelectionState createState() => _AreaSelectionState();
}

class _AreaSelectionState extends State<AreaSelection> {

  List<AreaModel> provices = [
    AreaModel.fromMap({
      "id": 110000,
      "name": "北京市",
      "childs": [
        {
          "id": 110100,
          "name": "北京城区",
          "childs": [
            {
              "id": 110101,
              "name": "东城区",
              "childs": null
            },
            {
              "id": 110102,
              "name": "西城区",
              "childs": null
            },
            {
              "id": 110105,
              "name": "朝阳区",
              "childs": null
            },
            {
              "id": 110106,
              "name": "丰台区",
              "childs": null
            },
          ]
        }
      ]
    }),
    AreaModel.fromMap({
      "id": 120000,
      "name": "天津市",
      "childs": [
        {
          "id": 120100,
          "name": "天津城区",
          "childs": [
            {
              "id": 120101,
              "name": "和平区",
              "childs": null
            },
            {
              "id": 120102,
              "name": "河东区",
              "childs": null
            },
            {
              "id": 120103,
              "name": "河西区",
              "childs": null
            },
            {
              "id": 120104,
              "name": "南开区",
              "childs": null
            },
            {
              "id": 120105,
              "name": "河北区",
              "childs": null
            },
            {
              "id": 120106,
              "name": "红桥区",
              "childs": null
            },
            {
              "id": 120110,
              "name": "东丽区",
              "childs": null
            },
            {
              "id": 120111,
              "name": "西青区",
              "childs": null
            },
            {
              "id": 120112,
              "name": "津南区",
              "childs": null
            },
            {
              "id": 120113,
              "name": "北辰区",
              "childs": null
            },
            {
              "id": 120114,
              "name": "武清区",
              "childs": null
            },
            {
              "id": 120115,
              "name": "宝坻区",
              "childs": null
            },
            {
              "id": 120116,
              "name": "滨海新区",
              "childs": null
            },
            {
              "id": 120117,
              "name": "宁河区",
              "childs": null
            },
            {
              "id": 120118,
              "name": "静海区",
              "childs": null
            },
            {
              "id": 120119,
              "name": "蓟州区",
              "childs": null
            }
          ]
        }
      ]
    }),
    AreaModel.fromMap({
      "id": 130000,
      "name": "河北省",
      "childs": [
        {
          "id": 130100,
          "name": "石家庄市",
          "childs": [
            {
              "id": 130102,
              "name": "长安区",
              "childs": null
            },
            {
              "id": 130104,
              "name": "桥西区",
              "childs": null
            },
            {
              "id": 130105,
              "name": "新华区",
              "childs": null
            },
            {
              "id": 130107,
              "name": "井陉矿区",
              "childs": null
            },
            {
              "id": 130108,
              "name": "裕华区",
              "childs": null
            },
            {
              "id": 130109,
              "name": "藁城区",
              "childs": null
            },
            {
              "id": 130110,
              "name": "鹿泉区",
              "childs": null
            },
            {
              "id": 130111,
              "name": "栾城区",
              "childs": null
            },
            {
              "id": 130121,
              "name": "井陉县",
              "childs": null
            },
            {
              "id": 130123,
              "name": "正定县",
              "childs": null
            },
            {
              "id": 130125,
              "name": "行唐县",
              "childs": null
            },
            {
              "id": 130126,
              "name": "灵寿县",
              "childs": null
            },
            {
              "id": 130127,
              "name": "高邑县",
              "childs": null
            },
            {
              "id": 130128,
              "name": "深泽县",
              "childs": null
            },
            {
              "id": 130129,
              "name": "赞皇县",
              "childs": null
            },
            {
              "id": 130130,
              "name": "无极县",
              "childs": null
            },
            {
              "id": 130131,
              "name": "平山县",
              "childs": null
            },
            {
              "id": 130132,
              "name": "元氏县",
              "childs": null
            },
            {
              "id": 130133,
              "name": "赵县",
              "childs": null
            },
            {
              "id": 130181,
              "name": "辛集市",
              "childs": null
            },
            {
              "id": 130183,
              "name": "晋州市",
              "childs": null
            },
            {
              "id": 130184,
              "name": "新乐市",
              "childs": null
            }
          ]
        },
        {
          "id": 130200,
          "name": "唐山市",
          "childs": [
            {
              "id": 130202,
              "name": "路南区",
              "childs": null
            },
            {
              "id": 130203,
              "name": "路北区",
              "childs": null
            },
            {
              "id": 130204,
              "name": "古冶区",
              "childs": null
            },
            {
              "id": 130205,
              "name": "开平区",
              "childs": null
            },
            {
              "id": 130207,
              "name": "丰南区",
              "childs": null
            },
            {
              "id": 130208,
              "name": "丰润区",
              "childs": null
            },
            {
              "id": 130209,
              "name": "曹妃甸区",
              "childs": null
            },
            {
              "id": 130224,
              "name": "滦南县",
              "childs": null
            },
            {
              "id": 130225,
              "name": "乐亭县",
              "childs": null
            },
            {
              "id": 130227,
              "name": "迁西县",
              "childs": null
            },
            {
              "id": 130229,
              "name": "玉田县",
              "childs": null
            },
            {
              "id": 130281,
              "name": "遵化市",
              "childs": null
            },
            {
              "id": 130283,
              "name": "迁安市",
              "childs": null
            },
            {
              "id": 130284,
              "name": "滦州市",
              "childs": null
            }
          ]
        },
        {
          "id": 130300,
          "name": "秦皇岛市",
          "childs": [
            {
              "id": 130302,
              "name": "海港区",
              "childs": null
            },
            {
              "id": 130303,
              "name": "山海关区",
              "childs": null
            },
            {
              "id": 130304,
              "name": "北戴河区",
              "childs": null
            },
            {
              "id": 130306,
              "name": "抚宁区",
              "childs": null
            },
            {
              "id": 130321,
              "name": "青龙满族自治县",
              "childs": null
            },
            {
              "id": 130322,
              "name": "昌黎县",
              "childs": null
            },
            {
              "id": 130324,
              "name": "卢龙县",
              "childs": null
            }
          ]
        },
        {
          "id": 130400,
          "name": "邯郸市",
          "childs": [
            {
              "id": 130402,
              "name": "邯山区",
              "childs": null
            },
            {
              "id": 130403,
              "name": "丛台区",
              "childs": null
            },
            {
              "id": 130404,
              "name": "复兴区",
              "childs": null
            },
            {
              "id": 130406,
              "name": "峰峰矿区",
              "childs": null
            },
            {
              "id": 130407,
              "name": "肥乡区",
              "childs": null
            },
            {
              "id": 130408,
              "name": "永年区",
              "childs": null
            },
            {
              "id": 130423,
              "name": "临漳县",
              "childs": null
            },
            {
              "id": 130424,
              "name": "成安县",
              "childs": null
            },
            {
              "id": 130425,
              "name": "大名县",
              "childs": null
            },
            {
              "id": 130426,
              "name": "涉县",
              "childs": null
            },
            {
              "id": 130427,
              "name": "磁县",
              "childs": null
            },
            {
              "id": 130430,
              "name": "邱县",
              "childs": null
            },
            {
              "id": 130431,
              "name": "鸡泽县",
              "childs": null
            },
            {
              "id": 130432,
              "name": "广平县",
              "childs": null
            },
            {
              "id": 130433,
              "name": "馆陶县",
              "childs": null
            },
            {
              "id": 130434,
              "name": "魏县",
              "childs": null
            },
            {
              "id": 130435,
              "name": "曲周县",
              "childs": null
            },
            {
              "id": 130481,
              "name": "武安市",
              "childs": null
            }
          ]
        },
        {
          "id": 130500,
          "name": "邢台市",
          "childs": [
            {
              "id": 130502,
              "name": "桥东区",
              "childs": null
            },
            {
              "id": 130503,
              "name": "桥西区",
              "childs": null
            },
            {
              "id": 130521,
              "name": "邢台县",
              "childs": null
            },
            {
              "id": 130522,
              "name": "临城县",
              "childs": null
            },
            {
              "id": 130523,
              "name": "内丘县",
              "childs": null
            },
            {
              "id": 130524,
              "name": "柏乡县",
              "childs": null
            },
            {
              "id": 130525,
              "name": "隆尧县",
              "childs": null
            },
            {
              "id": 130526,
              "name": "任县",
              "childs": null
            },
            {
              "id": 130527,
              "name": "南和县",
              "childs": null
            },
            {
              "id": 130528,
              "name": "宁晋县",
              "childs": null
            },
            {
              "id": 130529,
              "name": "巨鹿县",
              "childs": null
            },
            {
              "id": 130530,
              "name": "新河县",
              "childs": null
            },
            {
              "id": 130531,
              "name": "广宗县",
              "childs": null
            },
            {
              "id": 130532,
              "name": "平乡县",
              "childs": null
            },
            {
              "id": 130533,
              "name": "威县",
              "childs": null
            },
            {
              "id": 130534,
              "name": "清河县",
              "childs": null
            },
            {
              "id": 130535,
              "name": "临西县",
              "childs": null
            },
            {
              "id": 130581,
              "name": "南宫市",
              "childs": null
            },
            {
              "id": 130582,
              "name": "沙河市",
              "childs": null
            }
          ]
        },
        {
          "id": 130600,
          "name": "保定市",
          "childs": [
            {
              "id": 130602,
              "name": "竞秀区",
              "childs": null
            },
            {
              "id": 130606,
              "name": "莲池区",
              "childs": null
            },
            {
              "id": 130607,
              "name": "满城区",
              "childs": null
            },
            {
              "id": 130608,
              "name": "清苑区",
              "childs": null
            },
            {
              "id": 130609,
              "name": "徐水区",
              "childs": null
            },
            {
              "id": 130623,
              "name": "涞水县",
              "childs": null
            },
            {
              "id": 130624,
              "name": "阜平县",
              "childs": null
            },
            {
              "id": 130626,
              "name": "定兴县",
              "childs": null
            },
            {
              "id": 130627,
              "name": "唐县",
              "childs": null
            },
            {
              "id": 130628,
              "name": "高阳县",
              "childs": null
            },
            {
              "id": 130629,
              "name": "容城县",
              "childs": null
            },
            {
              "id": 130630,
              "name": "涞源县",
              "childs": null
            },
            {
              "id": 130631,
              "name": "望都县",
              "childs": null
            },
            {
              "id": 130632,
              "name": "安新县",
              "childs": null
            },
            {
              "id": 130633,
              "name": "易县",
              "childs": null
            },
            {
              "id": 130634,
              "name": "曲阳县",
              "childs": null
            },
            {
              "id": 130635,
              "name": "蠡县",
              "childs": null
            },
            {
              "id": 130636,
              "name": "顺平县",
              "childs": null
            },
            {
              "id": 130637,
              "name": "博野县",
              "childs": null
            },
            {
              "id": 130638,
              "name": "雄县",
              "childs": null
            },
            {
              "id": 130681,
              "name": "涿州市",
              "childs": null
            },
            {
              "id": 130682,
              "name": "定州市",
              "childs": null
            },
            {
              "id": 130683,
              "name": "安国市",
              "childs": null
            },
            {
              "id": 130684,
              "name": "高碑店市",
              "childs": null
            }
          ]
        },
        {
          "id": 130700,
          "name": "张家口市",
          "childs": [
            {
              "id": 130702,
              "name": "桥东区",
              "childs": null
            },
            {
              "id": 130703,
              "name": "桥西区",
              "childs": null
            },
            {
              "id": 130705,
              "name": "宣化区",
              "childs": null
            },
            {
              "id": 130706,
              "name": "下花园区",
              "childs": null
            },
            {
              "id": 130708,
              "name": "万全区",
              "childs": null
            },
            {
              "id": 130709,
              "name": "崇礼区",
              "childs": null
            },
            {
              "id": 130722,
              "name": "张北县",
              "childs": null
            },
            {
              "id": 130723,
              "name": "康保县",
              "childs": null
            },
            {
              "id": 130724,
              "name": "沽源县",
              "childs": null
            },
            {
              "id": 130725,
              "name": "尚义县",
              "childs": null
            },
            {
              "id": 130726,
              "name": "蔚县",
              "childs": null
            },
            {
              "id": 130727,
              "name": "阳原县",
              "childs": null
            },
            {
              "id": 130728,
              "name": "怀安县",
              "childs": null
            },
            {
              "id": 130730,
              "name": "怀来县",
              "childs": null
            },
            {
              "id": 130731,
              "name": "涿鹿县",
              "childs": null
            },
            {
              "id": 130732,
              "name": "赤城县",
              "childs": null
            }
          ]
        },
        {
          "id": 130800,
          "name": "承德市",
          "childs": [
            {
              "id": 130802,
              "name": "双桥区",
              "childs": null
            },
            {
              "id": 130803,
              "name": "双滦区",
              "childs": null
            },
            {
              "id": 130804,
              "name": "鹰手营子矿区",
              "childs": null
            },
            {
              "id": 130821,
              "name": "承德县",
              "childs": null
            },
            {
              "id": 130822,
              "name": "兴隆县",
              "childs": null
            },
            {
              "id": 130824,
              "name": "滦平县",
              "childs": null
            },
            {
              "id": 130825,
              "name": "隆化县",
              "childs": null
            },
            {
              "id": 130826,
              "name": "丰宁满族自治县",
              "childs": null
            },
            {
              "id": 130827,
              "name": "宽城满族自治县",
              "childs": null
            },
            {
              "id": 130828,
              "name": "围场满族蒙古族自治县",
              "childs": null
            },
            {
              "id": 130881,
              "name": "平泉市",
              "childs": null
            }
          ]
        },
        {
          "id": 130900,
          "name": "沧州市",
          "childs": [
            {
              "id": 130902,
              "name": "新华区",
              "childs": null
            },
            {
              "id": 130903,
              "name": "运河区",
              "childs": null
            },
            {
              "id": 130921,
              "name": "沧县",
              "childs": null
            },
            {
              "id": 130922,
              "name": "青县",
              "childs": null
            },
            {
              "id": 130923,
              "name": "东光县",
              "childs": null
            },
            {
              "id": 130924,
              "name": "海兴县",
              "childs": null
            },
            {
              "id": 130925,
              "name": "盐山县",
              "childs": null
            },
            {
              "id": 130926,
              "name": "肃宁县",
              "childs": null
            },
            {
              "id": 130927,
              "name": "南皮县",
              "childs": null
            },
            {
              "id": 130928,
              "name": "吴桥县",
              "childs": null
            },
            {
              "id": 130929,
              "name": "献县",
              "childs": null
            },
            {
              "id": 130930,
              "name": "孟村回族自治县",
              "childs": null
            },
            {
              "id": 130981,
              "name": "泊头市",
              "childs": null
            },
            {
              "id": 130982,
              "name": "任丘市",
              "childs": null
            },
            {
              "id": 130983,
              "name": "黄骅市",
              "childs": null
            },
            {
              "id": 130984,
              "name": "河间市",
              "childs": null
            }
          ]
        },
        {
          "id": 131000,
          "name": "廊坊市",
          "childs": [
            {
              "id": 131002,
              "name": "安次区",
              "childs": null
            },
            {
              "id": 131003,
              "name": "广阳区",
              "childs": null
            },
            {
              "id": 131022,
              "name": "固安县",
              "childs": null
            },
            {
              "id": 131023,
              "name": "永清县",
              "childs": null
            },
            {
              "id": 131024,
              "name": "香河县",
              "childs": null
            },
            {
              "id": 131025,
              "name": "大城县",
              "childs": null
            },
            {
              "id": 131026,
              "name": "文安县",
              "childs": null
            },
            {
              "id": 131028,
              "name": "大厂回族自治县",
              "childs": null
            },
            {
              "id": 131081,
              "name": "霸州市",
              "childs": null
            },
            {
              "id": 131082,
              "name": "三河市",
              "childs": null
            }
          ]
        },
        {
          "id": 131100,
          "name": "衡水市",
          "childs": [
            {
              "id": 131102,
              "name": "桃城区",
              "childs": null
            },
            {
              "id": 131103,
              "name": "冀州区",
              "childs": null
            },
            {
              "id": 131121,
              "name": "枣强县",
              "childs": null
            },
            {
              "id": 131122,
              "name": "武邑县",
              "childs": null
            },
            {
              "id": 131123,
              "name": "武强县",
              "childs": null
            },
            {
              "id": 131124,
              "name": "饶阳县",
              "childs": null
            },
            {
              "id": 131125,
              "name": "安平县",
              "childs": null
            },
            {
              "id": 131126,
              "name": "故城县",
              "childs": null
            },
            {
              "id": 131127,
              "name": "景县",
              "childs": null
            },
            {
              "id": 131128,
              "name": "阜城县",
              "childs": null
            },
            {
              "id": 131182,
              "name": "深州市",
              "childs": null
            }
          ]
        }
      ]
    }),
  ];
  List<AreaModel> citys = [];
  List<AreaModel> county = [];

  ///选中的省份的index
  int selectedProvice = 0;
  ///选中的市的index
  int selectedCity = 0;
  ///选中的区的index
  int selectedCounty = 0;


  ///定义省份控制器
  FixedExtentScrollController proviceCotroller;
  ///定义市控制器
  FixedExtentScrollController cityController;
  ///定义区控制器
  FixedExtentScrollController countyController;

  /// 选择变化时候的值
  Map tempAreaInfo;

  @override
  void initState() {
    super.initState();
    selectedProvice = widget.initProviceIndex ?? 0;
    selectedCity = widget.initCityIndex ?? 0;
    selectedCounty = widget.initCountyIndex ?? 0;
    citys = provices[selectedProvice].childs;
    county = citys[selectedCity].childs;
    proviceCotroller = new FixedExtentScrollController(initialItem: widget.initProviceIndex ?? 0);
    cityController = new FixedExtentScrollController(initialItem: widget.initCityIndex ?? 0);
    countyController = new FixedExtentScrollController(initialItem: widget.initCountyIndex ?? 0);
    tempAreaInfo = {
      'proviceId': provices[selectedProvice].id,
      'cityId': citys[selectedCity].id,
      'countyId': county[selectedCounty].id,
      'address': provices[selectedProvice].name + citys[selectedCity].name + county[selectedCounty].name,
      'proviceIndex': selectedProvice,
      'cityIndex': selectedCity,
      'countyIndex': selectedCounty
    };
  }

  ///给父组件传递结果
  void passParams(){
    setState(() {
      tempAreaInfo = {
        'proviceId': provices[selectedProvice].id,
        'cityId': citys[selectedCity].id,
        'countyId': county[selectedCounty].id,
        'address': provices[selectedProvice].name + citys[selectedCity].name + county[selectedCounty].name,
        'proviceIndex': selectedProvice,
        'cityIndex': selectedCity,
        'countyIndex': selectedCounty
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('取消'),
                ),
                GestureDetector(
                  onTap: (){
                    widget.onSelect(tempAreaInfo);
                    Navigator.of(context).pop();
                  },
                  child: Text('确认', style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: CupertinoPicker(
                    backgroundColor: Colors.white,
                    diameterRatio: 1.1,
                    scrollController: proviceCotroller,
                    itemExtent: 48.0,
                    onSelectedItemChanged: (position){
                      setState(() {
                        selectedProvice = position;
                        citys = provices[selectedProvice].childs;
                        selectedCity = 0;
                        county = citys[selectedCity].childs;
                      });
                      cityController.jumpToItem(0);
                      countyController.jumpToItem(0);
                      passParams();
                    },
                    children: createEachItem(provices),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CupertinoPicker(
                    backgroundColor: Colors.white,
                    scrollController: cityController,
                    itemExtent: 48.0,
                    onSelectedItemChanged: (position){
                      setState(() {
                        selectedCity = position;
                        selectedCounty = 0;
                        county = citys[selectedCity].childs;
                      });
                      countyController.jumpToItem(0);
                      passParams();
                    },
                    children: createEachItem(citys),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CupertinoPicker(
                    backgroundColor: Colors.white,
                    scrollController: countyController,
                    itemExtent: 48.0,
                    onSelectedItemChanged: (position){
                      selectedCounty = position;
                      passParams();
                    },
                    children: createEachItem(county),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> createEachItem(List<AreaModel> data) {
  List<Widget> target = [];

  for (AreaModel item in data) {
    target.add(Container(
      padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
      child: Text(
        item.name ?? '',
        style: TextStyle(fontSize: 14.0),
      ),
    ));
  }

  return target;
}
