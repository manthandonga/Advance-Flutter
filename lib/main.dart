import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const registration(),
      },
    ),
  );
}

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final ImagePicker picker = ImagePicker();
  int StepValue = 0;
  File? imgFile;
  TextStyle titleStyle = const TextStyle(fontSize: 20, color: Colors.black);
  DateTime initialDate = DateTime.now();
  String selectedDate = "";

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController pincodecontroller = TextEditingController();

  static String fullname = '';
  static String mail = '';
  static String mobil_num = '';
  static String Address = '';
  static String pin = '';

  static File? myImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stepper(
                currentStep: StepValue,
                onStepTapped: (val) {
                  setState(() {
                    StepValue = val;
                    // print(initialStepValue);
                  });
                },
                onStepContinue: () {
                  if (StepValue < 3 &&
                      formKey.currentState!.validate()) {
                    setState(() {
                      ++StepValue;
                    });
                  }
                },
                onStepCancel: () {
                  if (StepValue > 0) {
                    setState(() {
                      --StepValue;
                    });
                  }
                },
                controlsBuilder: (context, details) {
                  return Row(
                    children: [
                      (StepValue < 3) ? ElevatedButton(
                        onPressed: details.onStepContinue,
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        child:  const Text("Next"),
                      ) : ElevatedButton(
                        onPressed: details.onStepContinue,
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        child:  const Text("Submit"),
                      ),
                      const SizedBox(width: 20),
                      (StepValue > 0) ? OutlinedButton(
                        onPressed: details.onStepCancel,
                        style: OutlinedButton.styleFrom(primary: Colors.black),
                        child:  const Text("Cancel"),
                      ) : Container(),
                    ],
                  );
                },
                steps: [
                  Step(
                    state: StepState.complete,
                    title: const Text("Profile"),
                    content: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: CircleAvatar(
                                  backgroundImage: (imgFile != null)
                                      ? FileImage(imgFile!)
                                      : null,
                                  radius: 60,
                                  backgroundColor: Colors.grey,
                                  child: (imgFile != null)
                                      ? const Text("")
                                      : TextButton(
                                          onPressed: () async {
                                            XFile? image =
                                                await picker.pickImage(
                                                    source: ImageSource.camera);
                                            setState(() {
                                              imgFile = File(image!.path);
                                              myImage = imgFile;
                                            });
                                          },
                                          child: const Text(
                                            "ADD",
                                            style:
                                                TextStyle(color: Colors.black),
                                          )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    isActive: (StepValue >= 0) ? true : false,
                  ),
                  Step(
                      state: StepState.complete,
                      title: const Text("Prsonal Detail"),
                      content: Column(
                        children: [
                          TextFormField(
                            controller: namecontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  first name";
                              } else if (val.length < 2) {
                                return "enter valid name...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                fullname = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "Full name",
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailcontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  email";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                mail = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email_outlined),
                              hintText: "email address",
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phonecontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  phone no";
                              } else if (val.length != 10) {
                                return "enter valid length phone no...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                mobil_num = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.phone),
                              hintText: "Mobile Number",
                            ),
                          ),
                        ],
                      ),
                      isActive: (StepValue >= 1) ? true : false),
                  Step(
                      state: StepState.complete,
                      title: const Text("Date of Birth"),
                      content: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Date", style: titleStyle),
                              Text(selectedDate, style: titleStyle),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () async {
                                  DateTime? pickerDate = await showDatePicker(
                                      context: context,
                                      initialDate: initialDate,
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2030),
                                      initialDatePickerMode: DatePickerMode.day,
                                      initialEntryMode:
                                          DatePickerEntryMode.calendarOnly,
                                      helpText: "Choose your destination date",
                                      confirmText: "Book",
                                      cancelText: "Dismiss",
                                      selectableDayPredicate: (DateTime day) {
                                        if ((day.isAfter(DateTime.now()
                                                .subtract(const Duration(
                                                    days: 1)))) &&
                                            (day.isBefore(DateTime.now().add(
                                                const Duration(days: 31))))) {
                                          return true;
                                        }
                                        return false;
                                      });
                                  setState(() {
                                    if (pickerDate != null) {
                                      selectedDate =
                                          "${pickerDate.day}/${pickerDate.month}/${pickerDate.year}";
                                    }
                                  });
                                },
                                child: const Text("Change Date")),
                          ),
                        ],
                      ),
                      isActive: (StepValue >= 2) ? true : false),
                  Step(
                      state: StepState.complete,
                      title: const Text("address"),
                      content: Column(
                        children: [
                          TextFormField(
                            controller: addresscontroller,
                            maxLines: 3,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter address";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                               Address = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.home_filled),
                              hintText: "Enter Your House address",
                            ),
                          ),
                          TextFormField(
                            controller: pincodecontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter valid pincode";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                pin = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.pin),
                              hintText: "pincode",
                            ),
                          ),
                        ],
                      ),
                      isActive: (StepValue >= 3) ? true : false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
