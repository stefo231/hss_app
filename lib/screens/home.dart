import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/hss_profile_pic.jpg'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome,',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      'Damjan',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
                //Change Icon to Image from Assets
                Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                    ),
                    iconSize: 40.0,
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                //Change Icon to Image from Assets
                child: ListTile(
                  leading: Icon(
                    Icons.restore,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                  title: Text(
                    "Reminders",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  subtitle: Text(
                    'Have you taken your pills?',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset("images/hss_video.png"),
                      iconSize: 75.0,
                      onPressed: () {},
                    ),
                    Text('Video')
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset("images/hss_booking.png"),
                      iconSize: 75.0,
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    Text('Booking')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset("images/sos_helper.jpg"),
                      iconSize: 50.0,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    Text(
                      'Emergency SOS',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Image.asset("images/hss_health_sensor.png"),
                      iconSize: 50.0,
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    Text('Health sensor')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
