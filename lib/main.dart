import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static bool Platform = false;
  static bool lock_app_Switch = false;
  static bool fingerprint = false;
  static bool Change_pass_switch = false;
  @override
  Widget build(BuildContext context) {
    return (Platform == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.redAccent,
                title: const Text('Settings Ui'),
                actions: [
                  Switch(
                    value: Platform,
                    activeColor: Colors.white38,
                    inactiveTrackColor: Colors.white,
                    onChanged: (val) {
                      setState(() {
                        Platform = val;
                      });
                    },
                  ),
                ],
              ),
              body: Container(
                color: Colors.grey.shade400,
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //common
                            const Text(
                              "Common",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.language_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Language",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "English",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.cloud_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Environment",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "production",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            //Account
                            const Text(
                              "Account",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Phone number",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Email",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.login_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Environment",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "roduction",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            //Secutiry
                            const Text(
                              "Secutiry",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phonelink_lock_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Lock app in background",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Switch(
                                    value: lock_app_Switch,
                                    activeColor: Colors.redAccent,
                                    onChanged: (val) {
                                      setState(() {
                                        lock_app_Switch = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.fingerprint,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Use Fingerprint",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Switch(
                                    value: fingerprint,
                                    activeColor: Colors.redAccent,
                                    onChanged: (val) {
                                      setState(() {
                                        fingerprint = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.lock,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Change Password",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Switch(
                                    value: Change_pass_switch,
                                    activeColor: Colors.redAccent,
                                    onChanged: (val) {
                                      setState(() {
                                        Change_pass_switch = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            //misc
                            const Text(
                              "Misc",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.security_rounded,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Terms of Service",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.source_rounded,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Open source licenses",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.redAccent,
                middle: const Text(
                  "Settings UI",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                trailing: CupertinoSwitch(
                  value: Platform,
                  onChanged: (val) {
                    setState(() {
                      Platform = val;
                    });
                  },
                ),
              ),
              child: Container(
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //common
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: const [
                                 Text(
                                  "Common",
                                  style:  TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                children: [

                                  Icon(
                                    Icons.language_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Language",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "English",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                children: [

                                  Icon(
                                    CupertinoIcons.cloud,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Environment",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    "Production",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //account
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: const [
                                 Text(
                                  "Account",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                   CupertinoIcons.phone,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Phone Number",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.mail_solid,
                                    size: 25,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Email",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.login_outlined,
                                    size: 25,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Sign Out",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //Secutiry
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: const [
                                 Text(
                                  "Secutiry",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                  Icons.phonelink_lock_outlined,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Lock app in Background",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  CupertinoSwitch(
                                    activeColor: Colors.redAccent,
                                    value: lock_app_Switch,
                                    onChanged: (val) {
                                      setState(() {
                                        lock_app_Switch = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.fingerprint,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Use fingerprint",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  CupertinoSwitch(
                                    activeColor: Colors.redAccent,
                                    value: fingerprint,
                                    onChanged: (val) {
                                      setState(() {
                                        fingerprint = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.lock_fill,
                                    size: 30,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Change password",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  CupertinoSwitch(
                                    activeColor: Colors.redAccent,
                                    value: Change_pass_switch,
                                    onChanged: (val) {
                                      setState(() {
                                        Change_pass_switch = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          //Misc
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: const [
                                 Text(
                                  "Misc",
                                  style:  TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.app_badge_fill,
                                    size: 25,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Terms of Service",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(CupertinoIcons.forward,color: Colors.grey.shade600,),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            height: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.arrow_up_doc_fill,
                                    size: 25,
                                    color: Colors.grey.shade700,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "Open source licenses",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(CupertinoIcons.forward,color: Colors.grey.shade600,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          );
  }
}
