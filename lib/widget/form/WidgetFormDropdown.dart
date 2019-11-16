import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  List<String> dummy = <String>[
    'All',
    'Android',
    'IOS',
    'Front-End',
    'Back-End',
    'Designer'
  ];

  String currValue;
  List<String> lists = new List();
  List<String> data;
  ValueChanged<String> onChanged;
  Sink<bool> state;

  CustomDropDownButton({this.data, this.currValue = 'All', this.onChanged,this.state});

  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    widget.lists.clear();
    if (widget.data == null) {
      widget.lists.addAll(widget.dummy);
    } else if (!widget.data.contains(widget.currValue)) {
      widget.lists.add(widget.currValue);
      widget.lists.addAll(widget.data);
    } else {
      widget.lists.addAll(widget.data);
    }

    return Card(
      child: Container(
        child: new InputDecorator(
          baseStyle: new TextStyle(
              fontSize: 16.0, fontFamily: 'Montserrat', color: Colors.grey),
          isFocused: false,
          decoration: new InputDecoration(),
          child: new DropdownButtonHideUnderline(
            child: new DropdownButton<String>(
              
              value: widget.currValue,
              isDense: true,
              onChanged: widget.onChanged != null
                  ? widget.onChanged
                  : (String value) {
                      if(value == "Rejected") widget.state.add(false);
                      else widget.state.add(true);

                      setState(() {
                        widget.currValue = value;
                      });
                    },
              items: widget.lists.map(
                (String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value,overflow: TextOverflow.clip,style: TextStyle(fontSize: 12.0),textAlign: TextAlign.center,),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
