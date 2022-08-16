import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class TestFromBuilder extends StatefulWidget {
  const TestFromBuilder({Key? key}) : super(key: key);

  @override
  State<TestFromBuilder> createState() => _TestFromBuilderState();
}

class _TestFromBuilderState extends State<TestFromBuilder> {
  // final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test')),
      body: Column(
        children: [
          Column(
            children: [
              // FormBuilderTextField(
              //   // key: _phoneFieldKey,
              //   name: 'phone',
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //       labelText: 'Phone number',
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(8))),
              //   validator: FormBuilderValidators.compose([
              //     FormBuilderValidators.required(),
              //     FormBuilderValidators.numeric(),
              //     FormBuilderValidators.max(70),
              //   ]),
              //   textInputAction: TextInputAction.next,
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       _formKey.currentState?.validate();
              //     },
              //     child: Text('click me'))
              Center(
                child: Text('ádfsadf'),
              )
            ],
          )
        ],
      ),
    );
  }
}
