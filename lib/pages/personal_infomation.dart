import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/pages/province.dart';
import 'package:nsdd/provider/date_provider.dart';
import 'package:nsdd/utils/routes.dart';
import 'package:provider/provider.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({Key? key}) : super(key: key);

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  final _nameControll = TextEditingController();
  final _sortNameControll = TextEditingController();
  final _cincControll = TextEditingController();
  final _genderControll = TextEditingController();
  final _fatherNameControll = TextEditingController();
  final _fatherOccupationControll = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _emailController = TextEditingController();
  final _contactController = TextEditingController();
  final _otherContactController = TextEditingController();
  final _guardianContactController = TextEditingController();
  final _postalAddressController = TextEditingController();
  final _permanentAddressController = TextEditingController();
  final _minorityController = TextEditingController();
  final _disabilityController = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItem {
    return [
      DropdownMenuItem(
        child: Text('USA'),
        value: 'usa',
      ),
      DropdownMenuItem(
        child: Text('CANADA'),
        value: 'canada',
      ),
      DropdownMenuItem(
        child: Text('JAPAN'),
        value: 'japan',
      ),
      DropdownMenuItem(
        child: Text('PAKISATAN'),
        value: 'pakistan',
      ),
    ];
  }

  List<DropdownMenuItem<Provice>> get dropdownItemProvice {
    return [
      DropdownMenuItem(
        child: Text('Punjab'),
        value: Provice(id: 1, name: 'Punjab'),
      ),
      DropdownMenuItem(
        child: Text('Sindh'),
        value: Provice(id: 2, name: 'Sindh'),
      ),
      DropdownMenuItem(
        child: Text('Sarhad'),
        value: Provice(id: 3, name: 'Sarhad'),
      ),
      DropdownMenuItem(
        child: Text('Blochistan'),
        value: Provice(id: 4, name: 'Blochistan'),
      ),
    ];
  }

  InputDecoration getInputDecuration(
      {Widget? prefixIcon, Widget? suffixIcon, required String hintText}) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      fillColor: const Color(0xffE9E9E9),
      contentPadding: EdgeInsets.symmetric(vertical: 20.h),
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  final outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: const BorderSide(color: Colors.transparent, width: 0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200.h,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        child: SvgPicture.asset(
                          'assets/svg/login_file.svg',
                          color: Color.fromARGB(255, 146, 2, 2),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 22,
                        child: Wrap(
                          children: [
                            Text(
                              'Personal Inform',
                              style: TextStyle(
                                color: Color.fromARGB(255, 146, 2, 2),
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'ation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                TextFormField(
                  controller: _nameControll,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Yours Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _sortNameControll,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Yours Nick Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _cincControll,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'CNIC Number',
                    prefixIcon: Icon(Icons.fingerprint),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _genderControll,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Gender',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _fatherNameControll,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Fathers Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _fatherOccupationControll,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Fathers Occupation',
                    prefixIcon: Icon(Icons.work_outline),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Consumer<DateProvider>(
                  builder: ((context, dp, child) {
                    return TextFormField(
                      onTap: () {
                        dp.pickDateDialog(context, _dateOfBirthController);
                      },
                      controller: _dateOfBirthController,
                      readOnly: true,
                      showCursor: false,
                      decoration: getInputDecuration(
                        hintText: 'Select Date',
                        prefixIcon: Icon(Icons.date_range_outlined),
                        suffixIcon: Icon(Icons.date_range_sharp),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Email here',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _contactController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Contact Number',
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _otherContactController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Other Contact Number',
                    prefixIcon: Icon(Icons.phone_android_rounded),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _guardianContactController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Guardian Contact Number',
                    prefixIcon: Icon(Icons.phone_android_outlined),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _postalAddressController,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Postall Address',
                    prefixIcon: Icon(
                      Icons.home_filled,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _permanentAddressController,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Permanent Address',
                    prefixIcon: Icon(
                      Icons.home,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<String>(
                  items: dropdownItem,
                  onChanged: (String? value) {},
                  decoration: getInputDecuration(
                    hintText: 'Select a Country',
                    prefixIcon: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _minorityController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Minority',
                    prefixIcon: Icon(
                      Icons.add_box,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _disabilityController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Diability',
                    prefixIcon: Icon(
                      Icons.person_add_disabled,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<Provice>(
                  items: dropdownItemProvice,
                  onChanged: (Provice? value) {},
                  decoration: getInputDecuration(
                    hintText: 'Select a Province',
                    prefixIcon: Icon(Icons.abc),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 65.h,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, RouteGenerator.qualify);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 146, 2, 2),
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
