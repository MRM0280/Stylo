import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:stylo_fashion/pages/Product_List_View/filter.dart';

class FilterRow extends StatefulWidget {
  @override
  _FilterRowState createState() => _FilterRowState();
}

class _FilterRowState extends State<FilterRow> {
  int selectedRadioSort;
  bool satVal = false;
  bool sunVal = false;

  @override
  void initState() {
    super.initState();
    selectedRadioSort = 0;
  }

  setSelectedRadioSort(int val) {
    setState(() {
      selectedRadioSort = val;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: () {
              _sortModalBottomSheet(context);
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.sort,
                    size: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'SORT',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20.0,
            width: 1.0,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft, child: Filter()));
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.filter_list,
                    size: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'FILTER',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _sortModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                Container(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'SORT BY',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jost',
                            letterSpacing: 0.7,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Divider(
                          height: 1.0,
                        ),
                        RadioListTile(
                          value: 1,
                          groupValue: selectedRadioSort,
                          title: Text("Popularity"),
                          onChanged: (val) {
                            setSelectedRadioSort(val);
                          },
                          activeColor: Colors.blue,
                        ),
                        RadioListTile(
                          value: 2,
                          groupValue: selectedRadioSort,
                          title: Text("Price -- Low to High"),
                          onChanged: (val) {
                            setSelectedRadioSort(val);
                          },
                          activeColor: Colors.blue,
                        ),
                        RadioListTile(
                          value: 3,
                          groupValue: selectedRadioSort,
                          title: Text("Price -- High to Low"),
                          onChanged: (val) {
                            setSelectedRadioSort(val);
                          },
                          activeColor: Colors.blue,
                        ),
                        RadioListTile(
                          value: 4,
                          groupValue: selectedRadioSort,
                          title: Text("Newest First"),
                          onChanged: (val) {
                            setSelectedRadioSort(val);
                          },
                          activeColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
