import 'package:budgetin/widget/CustomTheme.dart';
import 'package:budgetin/widget/buttons/WidgetButton.dart';
import 'package:budgetin/widget/form/WidgetForm.dart';
import 'package:budgetin/widget/form/WidgetFormDropdown.dart';
import 'package:budgetin/widget/text/WidgetText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardFormDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 400.0;
    double defaultScreenHeight = 810.0;

    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    return AnimatedContainer(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      duration: const Duration(milliseconds: 30),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          height: 400,
          decoration: BoxDecoration(
              color: CustomTheme.colorWhite,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: CustomTheme.colorWhite,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: WidgetText.poppinsMediumBlueDark30(
                        "Set Outcome",
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
              Container(
                child: Divider(
                  color: CustomTheme.colorBlueDark,
                  thickness: 1,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: WidgetText.poppinsLightBlack25(
                      "Total amount: ",
                    ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: WidgetForm.text("Eg. 12,500,000", null, isBordered: true),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: WidgetText.poppinsLightBlack25(
                    "Take total amount from:"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomDropDownButton(),
              ),
              InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: WidgetButtonDialog.large("Continue"))
            ],
          ),
        ),
      ),
    );
  }
}
