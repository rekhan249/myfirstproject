import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Qualification extends StatefulWidget {
  const Qualification({Key? key}) : super(key: key);

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  final _qualifiLevel = TextEditingController();
  final _degreeTitle = TextEditingController();
  final _obtainedMarks = TextEditingController();
  final _totalMarks = TextEditingController();
  final _dateOfBirthController = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItem {
    return [
      DropdownMenuItem(
        child: Text('Master'),
        value: 'master',
      ),
      DropdownMenuItem(
        child: Text('Bechlor'),
        value: 'bechlor',
      ),
      DropdownMenuItem(
        child: Text('Intermediate'),
        value: 'inter',
      ),
      DropdownMenuItem(
        child: Text('Matric'),
        value: 'matric',
      ),
    ];
  }

  List<DropdownMenuItem<String>> get dropdownItem1 {
    return [
      DropdownMenuItem(
        child: Text('Board'),
        value: 'board',
      ),
      DropdownMenuItem(
        child: Text('University'),
        value: 'university',
      ),
    ];
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2004),
      lastDate: DateTime.now(),
    ).then((pickDate) {
      if (pickDate != null) {
        _dateOfBirthController.text = pickDate.toString();
      }
    });
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                        top: 110,
                        left: 10,
                        child: Wrap(
                          children: [
                            Text(
                              'Qualification',
                              style: TextStyle(
                                color: Color.fromARGB(255, 146, 2, 2),
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
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<String>(
                  items: dropdownItem,
                  onChanged: (String? value) {},
                  decoration: getInputDecuration(
                    hintText: 'Qualification Level',
                    prefixIcon: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _degreeTitle,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Degree Title',
                    prefixIcon: Icon(
                      Icons.cast_for_education,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _obtainedMarks,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Obtained Marks/CGPA',
                    prefixIcon: Icon(
                      Icons.mark_chat_read,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  controller: _totalMarks,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: getInputDecuration(
                    hintText: 'Total Marks/CGPA',
                    prefixIcon: Icon(
                      Icons.toll_outlined,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextFormField(
                  onTap: () {
                    _showDatePicker();
                  },
                  controller: _dateOfBirthController,
                  readOnly: true,
                  showCursor: false,
                  decoration: getInputDecuration(
                    hintText: 'Passing Year',
                    prefixIcon: Icon(Icons.date_range_outlined),
                    suffixIcon: Icon(Icons.date_range_sharp),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                DropdownButtonFormField<String>(
                  items: dropdownItem1,
                  onChanged: (String? value) {},
                  decoration: getInputDecuration(
                    hintText: 'Board/University',
                    prefixIcon: Icon(Icons.add),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 65.h,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
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
