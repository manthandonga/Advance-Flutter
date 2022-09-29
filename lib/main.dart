import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ocstar_6/Splash.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splashscreen',
      routes: {
        'splashscreen': (context) => splashscreen(),
        '/': (context) => registration(),
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
  int init = 0;
  String selectedDate = "";
  File? imgFile;

  DateTime todayDate = DateTime.now();

  static String Full_Name = '';
  static String Mail = '';
  static String Mobile_Nuber = '';
  static String Address = '';
  static String Pin = '';
  static String Password = '';
  static String ConformPassword = '';
  static File? myImage;

  final GlobalKey<FormState> key = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController pswController = TextEditingController();
  TextEditingController ConfirmpswController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Registration form"),
        centerTitle: true,
      ),
      body: Form(
        key: key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stepper(
                currentStep: init,
                onStepTapped: (val) {
                  setState(() {
                    init = val;
                  });
                },
                onStepContinue: () {
                  if (init < 2 && key.currentState!.validate()) {
                    setState(() {
                      ++init;
                    });
                  }
                },
                onStepCancel: () {
                  if (init > 0) {
                    setState(() {
                      --init;
                    });
                  }
                },
                controlsBuilder: (context, details) {
                  return Row(
                    children: [
                      ElevatedButton(

                          onPressed: details.onStepContinue,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                          child: const Text("Next")),
                      const SizedBox(width: 20),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.black
                        ),
                          onPressed: details.onStepCancel,
                          child: const Text("Cancel"))
                    ],
                  );
                },
                steps: [
                  Step(
                    state: StepState.complete,
                    title: const Text("Registration Page"),
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
                                  backgroundColor: Colors.blue.shade200,
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
                                          child: const Text("ADD")),
                                ),
                              ),
                            ],
                          ),
                          TextFormField(
                            controller: nameController,
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
                                Full_Name = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.person),
                              hintText: "Full Name",
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  email address";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Mail = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.mark_email_read),
                              hintText: "Email Address",
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phoneController,
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
                                Mobile_Nuber = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.phone),
                              hintText: "Mobile Number",
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Date",
                                style:
                                    TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                selectedDate,
                                style:
                                    const TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black
                              ),
                                onPressed: () async {
                                  DateTime? pickerDate = await showDatePicker(
                                      context: context,
                                      initialDate: todayDate,
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
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: addressController,
                            maxLines: 2,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  address";
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
                              hintText: "Full House Address",
                            ),
                          ),
                          TextFormField(
                            controller: pincodeController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter valid pincode";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Pin = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.pin,color: Colors.grey,),
                              hintText: "Pincode",
                            ),
                          ),
                          TextFormField(
                            controller: pswController,
                            obscureText: true,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  phone no";
                              } else if (val.length >= 8) {
                                return "enter valid password...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Password = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.password_outlined),
                              hintText: "password",
                            ),
                          ),
                          TextFormField(
                            controller: ConfirmpswController,
                            obscureText: true,
                            validator: (val) {
                              if (val!.isEmpty) return 'Empty';
                              if (val != pswController.text) return 'Not Match';
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                ConformPassword = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.password_sharp),
                              hintText: "password",
                            ),
                          ),
                        ],
                      ),
                    ),
                    isActive: (init >= 0) ? true : false,
                  ),
                  Step(
                      state: StepState.complete,
                      title: const Text("Login"),
                      content: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter  email address";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Mail = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.mark_email_read),
                              hintText: "Email Address",
                            ),
                          ),
                          TextFormField(
                            controller: pswController,
                            obscureText: true,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "please enter valid password";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                Password = val!;
                              });
                            },
                            decoration: const InputDecoration(
                              icon: Icon(Icons.password_outlined),
                              hintText: "password",
                            ),
                          ),
                        ],
                      ),
                      isActive: (init >= 1) ? true : false),
                  Step(
                      state: StepState.complete,
                      title: const Text("Home"),
                      content: const Text("Login Successfully"),
                      isActive: (init >= 2) ? true : false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
