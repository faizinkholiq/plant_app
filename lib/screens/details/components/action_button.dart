import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 73,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20)
              ),
            ),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: Text("Description"),
          ),
        )
      ]
    );
  }
}
