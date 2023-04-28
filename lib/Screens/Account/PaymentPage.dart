import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:intl/intl.dart';
import 'package:realstateapp/Screens/Account/AccountSetUp/AccoutnSetUp.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _isShow = false;
  bool _isMasterCard = false;
  bool _isVisa = false;

  DateTime? _selectedDate;

  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        backgroundColor: ColorTheme.white1,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 10,
                          color: ColorTheme.darkblue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                    width: 86,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.white1),
                      ),
                      onPressed: () {},
                      child: Text(
                        "skip",
                        style: ThemeData.light().textTheme.labelSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.skip),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20, left: 24),
                child: Text("Add your",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        color: ColorTheme.blueheading,
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'payment method',
                  style: ThemeData.light().textTheme.labelMedium!.copyWith(
                      color: ColorTheme.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 24),
                child: Text("You can edit this later on your account setting.",
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 25),
                child: Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 3.2,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("images/CreditCard.png"),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 80,
                    left: MediaQuery.of(context).size.width / 80),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (_isShow == false) {
                            setState(() {
                              _isShow = true;
                              _isMasterCard = false;
                              _isVisa = false;
                            });
                          } else {
                            setState(() {
                              _isShow = false;
                            });
                          }
                        },
                        child: _isShow == true
                            ? Image(
                          image: AssetImage('images/PaymentActive.png'),
                          height: 50,
                          width: 137,
                        )
                            : Image(
                            image: AssetImage('images/Paymentrounded.png'),
                            height: 50,
                            width: 137),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 150),
                      GestureDetector(
                        onTap: () {
                          if (_isMasterCard == false) {
                            setState(() {
                              _isMasterCard = true;
                              _isShow = false;
                              _isVisa = false;
                            });
                          } else {
                            setState(() {
                              _isMasterCard = false;
                            });
                          }
                        },
                        child: _isMasterCard == true
                            ? Image(
                          image: AssetImage('images/PaymentActive2.png'),
                          height: 50,
                          width: 137,
                        )
                            : Image(
                          image: AssetImage('images/Paymentunded.png'),
                          height: 50,
                          width: 137,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 150),
                      GestureDetector(
                        onTap: () {
                          if (_isVisa == false) {
                            setState(() {
                              _isVisa = true;
                              _isMasterCard = false;
                              _isShow = false;
                            });
                          } else {
                            setState(() {
                              _isVisa = false;
                            });
                          }
                        },
                        child: _isVisa == true
                            ? Image(
                          image: AssetImage('images/visa.png'),
                          height: 50,
                          width: 137,
                        )
                            : Image(
                          image: AssetImage('images/PaymentVisa.png'),
                          height: 50,
                          width: 137,
                        ),
                      ),
                    ],

                  ),
                ),
              ),

              // Paypal Card Details
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30),
                child: Visibility(
                  visible: _isShow == true ? _isShow : _isShow = false,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: ColorTheme.green,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorTheme.white1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: ColorTheme.green,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.person,
                              color: ColorTheme.darkblue),
                          hintText: "Name",
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 40),
                      TextFormField(
                        cursorColor: ColorTheme.green,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorTheme.white1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: ColorTheme.green,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.email_outlined,
                              color: ColorTheme.darkblue),
                          hintText: " Email",
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //MasterCard Details
              Visibility(
                visible: _isMasterCard == true
                    ? _isMasterCard
                    : _isMasterCard = false,
                child: Column(
                  children: [
                    //Name textfield
                    TextFormField(
                      cursorColor: ColorTheme.green,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: ColorTheme.white1,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: ColorTheme.green,
                          ),
                        ),
                        suffixIcon: const Icon(Icons.person,
                            color: ColorTheme.darkblue),
                        hintText: "Name",
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 40),

                    //Credit card textfield
                    TextFormField(
                      cursorColor: ColorTheme.green,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: ColorTheme.white1,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: ColorTheme.green,
                          ),
                        ),
                        suffixIcon: const Icon(Icons.credit_card,
                            color: ColorTheme.darkblue),
                        hintText: "1234 5678 9012 3456",
                      ),
                    ),
                    // Date Picker
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: _pickDateDialog,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width: MediaQuery.of(context).size.height / 5.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: ColorTheme.white1,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedDate == null
                                          ? "11/05/23"
                                          : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate!)}',
                                      style: ThemeData.light()
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: ColorTheme.blueheading),
                                    ),
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      color: ColorTheme.blueheading,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 5.2,
                            child: TextFormField(
                              cursorColor: ColorTheme.green,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: ColorTheme.white1,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: ColorTheme.green,
                                  ),
                                ),
                                prefixIcon: const Icon(Icons.credit_card,
                                    color: ColorTheme.darkblue),
                                hintText: "CVV",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Visa Card Details
              Visibility(
                visible: _isVisa == true ? _isVisa : _isVisa = false,
                child: Column(
                  children: [
                    //Name textfield
                    TextFormField(
                      cursorColor: ColorTheme.green,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: ColorTheme.white1,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1.5,
                            color: ColorTheme.green,
                          ),
                        ),
                        suffixIcon: const Icon(Icons.person,
                            color: ColorTheme.darkblue),
                        hintText: "Name",
                      ),
                    ),

                    //Credit card textfield
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 40),
                      child: TextFormField(
                        cursorColor: ColorTheme.green,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorTheme.white1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: ColorTheme.green,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.credit_card,
                              color: ColorTheme.darkblue),
                          hintText: "1234 5678 9012 3456",
                        ),
                      ),
                    ),

                    // Date Picker
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: _pickDateDialog,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 14,
                              width: MediaQuery.of(context).size.height / 5.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: ColorTheme.white1,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedDate == null
                                          ? "11/05/23"
                                          : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate!)}',
                                      style: ThemeData.light()
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: ColorTheme.blueheading),
                                    ),
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      color: ColorTheme.blueheading,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height / 5.2,
                            child: TextFormField(
                              cursorColor: ColorTheme.green,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: ColorTheme.white1,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: ColorTheme.green,
                                  ),
                                ),
                                prefixIcon: const Icon(Icons.credit_card,
                                    color: ColorTheme.darkblue),
                                hintText: "CVV",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 15,bottom: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.green),
                        shadowColor: MaterialStateProperty.all(ColorTheme.blue),
                        elevation: MaterialStateProperty.all(50),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AccountSetUp(),
                            ));
                      },
                      child: Text(
                        "Next",
                        style: AppTheme.lightTheme()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: ColorTheme.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
