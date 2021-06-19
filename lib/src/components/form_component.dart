import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  static GlobalKey<FormState>? _key = new GlobalKey<FormState>();
  final Function(GlobalKey<FormState>? _key)? onValidate;
  final List<Widget>? inputs;
  final String? title;

  const FormComponent({Key? key, this.title, this.inputs, this.onValidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Container(
        child: Column(
          children: [
            Text(
              this.title!,
              style: TextStyle(),
            ),
            Container(
              child: Column(
                children: this.inputs!.map<Widget>((input) {
                  return Container(margin: EdgeInsets.only(bottom: 10), child: input);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
