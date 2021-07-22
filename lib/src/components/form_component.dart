import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  static GlobalKey<FormState>? _key = new GlobalKey<FormState>();
  final Function(GlobalKey<FormState>? _key)? onValidate;
  final List<Widget> children;
  final String? title;

  const FormComponent({Key? key, this.title, this.children: const [], this.onValidate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.title!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            ...this.children,
          ],
        ),
      ),
    );
  }
}
