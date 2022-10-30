import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  late String birthDateInString;
  late DateTime birthDate;
  var selectedDate;
  final _passwordController = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  late String _dropDownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: size16,
        title: Text(
          'Create Account',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: blueColor,
              ),
        ),
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: blueColor,
        ),
      ),
      body: Padding(
        padding: padding16,
        child: Column(children: [
          Form(
            key: _globalKey,
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: circular8,
                  ),
                ),
                ///TODO: change language
                validator: (value){
                  if (value == null || value.length == 0)
                    return 'Enter the name';
                  else if (value.length >= 4)
                    return 'The name should be contains 4 letters at least';
                  return null;
                },
              ),
              gap8,
              TextFormField(
                validator: (value){
                  if (value == null || value.length == 0)
                    return 'Enter the email';
                  else if (!value.contains('@'))
                    return 'Enter a valid email';
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: circular8,
                  ),
                ),
              ),
              gap8,
              TextFormField(
                controller: _passwordController,
                validator: (value){
                  if (value == null || value.length == 0)
                    return 'Enter the password';
                  else if (value.length <= 3)
                    return 'The password should contains 6 numbers at least';
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: circular8,
                  ),
                ),
              ),
              gap8,
              TextFormField(
                validator: (value){
                  if (value != _passwordController.text){
                    return 'Password does\'t match';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Rewrite password',
                  border: OutlineInputBorder(
                    borderRadius: circular8,
                  ),
                ),
              ),
              gap16,
              Row(
                children: [
                  Expanded(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: brightGreyColor,
                          borderRadius: circular8,
                        ),
                        child: Padding(
                          padding: paddingH8,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _dropDownValue,
                              onChanged: (value){
                                setState(() {
                                  _dropDownValue = value?? _dropDownValue;
                                });
                              },
                              itemHeight: size48,
                              focusColor: brightGreyColor,
                              autofocus: true,
                              isExpanded: true,
                              icon: Icon(Icons.male, color: blueColor),
                              items: <String>[
                                'Male',
                                'Female',
                              ].map<DropdownMenuItem<String>>((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
                            ),
                          ),
                        ),
                      ),
                  ),
                  gap16,
                  Expanded(
                      child: WritingBox(
                    filled: true,
                    onPressed: () async {
                      selectedDate = await DatePicker.showSimpleDatePicker(
                        context,
                        initialDate: DateTime(1990),
                        firstDate: DateTime(1920),
                        lastDate: DateTime(DateTime.now().year),
                        dateFormat: 'dd-MM-yyyy',
                        locale: DateTimePickerLocale.th,
                        backgroundColor: brightGreyColor,
                      );
                      setState(() {});
                    },
                    text: selectedDate != null
                        ? DateFormat('dd-MM-yyyy').format(selectedDate)
                        : DateFormat('dd-MM-yyyy')
                            .format(DateTime.now())
                            .toString(),
                    enabled: false,
                    suffixIcon: Icon(
                      Icons.date_range_outlined,
                      color: blueColor,
                    ),
                    hint: '',
                  )),
                  gap16,
                ],
              ),
              gap48,
              RoundedButton(text: 'Sign up', onPressed: (){
                _globalKey.currentState!.validate();
              },),
            ],
          ))
        ]),
      ),
    );
  }
}
