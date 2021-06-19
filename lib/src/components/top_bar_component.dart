import 'package:flutter/material.dart';

class TopBarComponent extends StatelessWidget {
  final String? title;
  final bool? hasBackButton;

  const TopBarComponent({Key? key, this.title, this.hasBackButton: true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            width: 60,
            child: IconButton(
              splashRadius: 20,
              icon: Icon(Icons.arrow_back_outlined),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(this.title!),
            ),
          ),
          Container(width: 60),
        ],
      ),
    );
  }
}
