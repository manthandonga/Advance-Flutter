import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppDemo());
}

class WhatsAppDemo extends StatelessWidget {
  const WhatsAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              indicatorWeight: 5,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
            title:  const Text(
              'Whats App',
              style: TextStyle(fontSize: 25),
            ),
            actions: [
              IconButton(onPressed: () {}, icon:  const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon:  const Icon(Icons.more_vert))
            ],
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: const [
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:   Text(
                          'Kishan Lathiya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                              Text('Hello', style: TextStyle(fontSize: 18)),
                        trailing:   Text('10:00 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:   Text(
                          'Monal Kathiriya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:   Text('📷 Photo',
                            style: TextStyle(fontSize: 18)),
                        trailing:   Text('3:44 am')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:   Text(
                          'Bhumit Sabhaya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:   Text('kal na pic mokl ?',
                            style: TextStyle(fontSize: 18)),
                        trailing:   Text('8:56 am')),
                      SizedBox(height: 5),
                     ListTile(
                        leading:  FlutterLogo(size: 40),
                        title:   Text(
                          'Meet Kajavadra',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                              Text('Sk??', style: TextStyle(fontSize: 18)),
                        trailing:   Text('3:22 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading:  FlutterLogo(size: 40),
                        title:   Text(
                          'Parth Kanani',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:   Text('Dummas Javu 6e kale ?',
                            style: TextStyle(fontSize: 18)),
                        trailing:   Text('10:11 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading:  FlutterLogo(size: 40),
                        title: Text(
                          'Bhaumik Savaliya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:   Text('30,000 Upadto Avje',
                            style: TextStyle(fontSize: 18)),
                        trailing:   Text('2:01 Am')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:  Text(
                          'Jitubhai Gohil',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:  Text('Surat kyare aava no 6o?',
                            style: TextStyle(fontSize: 18)),
                        trailing:  Text('4:10 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:  Text(
                          'Sahil Ramoliya',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:  Text('Caset Avi Gy ?',
                            style: TextStyle(fontSize: 18)),
                        trailing:  Text('7:07 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:  Text(
                          'Mom',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:  Text('ghare aay to jaldi',
                            style: TextStyle(fontSize: 18)),
                        trailing:  Text('11:01 pm')),
                      SizedBox(height: 5),
                     ListTile(
                        leading: FlutterLogo(size: 40),
                        title:  Text(
                          'Dhruv Rajpara',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle:  Text('kya che?',
                            style: TextStyle(fontSize: 18)),
                        trailing:  Text('10:07 Am')),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                      const SizedBox(
                      height: 10,
                    ),
                      const ListTile(
                      leading: CircleAvatar(
                          radius: 30, backgroundImage: NetworkImage("")),
                      title: Text(
                        'My Status',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Tap to add status update'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      height: 30,
                      child: Row(
                        children:  const [
                           SizedBox(width: 10),
                           Text(
                            'Recent Updates',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )
                        ],
                      ),
                    ),
                      const SizedBox(height: 10),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Bhai",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Today, 10:11 pm'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading:   CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Monal Kathiriya",
                        style:  TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Yesterday, 4:44 pm'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title:   Text(
                        "Kishan Lathiya",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle:  Text('Today, 6:30 pm'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Bhai",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Today, 1:14 pm'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child:  FlutterLogo(size: 40),
                      ),
                      title:   Text(
                        "Sahil Ramoliya",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle:   Text('Yesterday, 4:20 pm'),
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Papa",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Today, 8:30 pm'),
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title:   Text(
                        "Kishan Lathiya",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle:  Text('Today, 9:36 pm'),
                    ),
                      const SizedBox(
                      height: 10,
                    ),
                     const ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        'Dhruv Rajparat',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Today, 1:19 pm'),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: const [
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title:  Text(
                        "Parth Kanani",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↙Yesterday, 4:16 pm'),
                      trailing: Icon(
                        Icons.videocam,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading:  CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "jay Valani",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↙Today, 4:44 pm'),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child:  FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Monal Kathiriya",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↙Today, 7:48 pm'),
                      trailing: Icon(
                        Icons.videocam,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child:  FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Him Patel",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↗Yesterday, 2:18 pm'),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child:  FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Kishan patel",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↙Today, 2:48 pm'),
                      trailing: Icon(
                        Icons.videocam,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "papa",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↗Today, 11:29 pm'),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Papa",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↗Today, 8:47 pm'),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                     ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: FlutterLogo(size: 40),
                      ),
                      title: Text(
                        "Bhai",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('↙Today, 6:29 pm'),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
