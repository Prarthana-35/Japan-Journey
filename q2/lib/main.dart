import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/tokyo': (context) => TokyoScreen(),
        '/kyoto': (context) => KyotoScreen(),
        '/osaka': (context) => OsakaScreen(),
        '/nara': (context) => NaraScreen(),
      },
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool _isDarkMode = false;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  void _showTicketAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Book a Ticket'),
          content: Text('The cost of a ticket is \$100.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Japan - The Land Of Rising Sun',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 253, 190, 0),
                ),
                child: Text(
                  'Destinations',
                  style: TextStyle(
                      color: Color.fromARGB(66, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.landscape),
                title: Text('Tokyo'),
                onTap: () {
                  Navigator.pushNamed(context, '/tokyo');
                },
              ),
              ListTile(
                leading: Icon(Icons.local_pizza),
                title: Text('Kyoto'),
                onTap: () {
                  Navigator.pushNamed(context, '/kyoto');
                },
              ),
              ListTile(
                leading: Icon(Icons.security),
                title: Text('Osaka'),
                onTap: () {
                  Navigator.pushNamed(context, '/osaka');
                },
              ),
              ListTile(
                leading: Icon(Icons.pets),
                title: Text('Nara'),
                onTap: () {
                  Navigator.pushNamed(context, '/nara');
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _showTicketAlert(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Toggle Theme'),
                Switch(
                  value: _isDarkMode,
                  onChanged: (bool value) {
                    _toggleTheme(value);
                  },
                ),
                Text('Japan Journey', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 20), // Add vertical space instead of width
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tokyo');
                  },
                  child: Text('Go to Tokyo'),
                ),
                SizedBox(height: 20), // Add vertical space instead of width
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/kyoto');
                  },
                  child: Text('Go to Kyoto'),
                ),
                SizedBox(height: 20), // Add vertical space instead of width
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/osaka');
                  },
                  child: Text('Go to Osaka'),
                ),
                SizedBox(height: 20), // Add vertical space instead of width
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/nara');
                  },
                  child: Text('Go to Nara'),
                ),
                Image.asset('images/nihon.jpeg', height: 400, width: 400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TokyoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tokyo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/tokyo.jpeg',
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'Tokyo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Tokyo, Japan\'s bustling capital, is a city where tradition meets innovation. Known for its skyscrapers, historic temples, and vibrant neighborhoods, Tokyo offers an unparalleled blend of old and new. With a population of over 14 million in the city proper and 23 million in the Greater Tokyo Area, it is one of the world\'s most populous metropolitan areas. From the bustling streets of Shibuya to the serene gardens of Shinjuku Gyoen, Tokyo is a city of contrasts and excitement.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5, // Line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class KyotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kyoto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/kyoto.jpeg',
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'Kyoto',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Kyoto, once the capital of Japan, is a city renowned for its classical Buddhist temples, as well as gardens, imperial palaces, Shinto shrines, and traditional wooden houses. It is famous for its beautiful cherry blossoms, historic sites like the Golden Pavilion and the Fushimi Inari Shrine, and the traditional tea ceremonies. Kyoto offers a glimpse into Japan\'s rich history and culture.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5, // Line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class OsakaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Osaka'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/osaka.jpeg',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Osaka',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Osaka, Japan\'s second-largest city, is known for its modern architecture, nightlife, and hearty street food. Key attractions include Osaka Castle, Universal Studios Japan, and the bustling Dotonbori district. Osaka offers a vibrant urban experience with a unique blend of historical and contemporary elements.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5, // Line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class NaraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nara'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/nara.jpeg',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Nara',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Nara, Japan\'s first capital, is known for its historic temples, deer park, and ancient treasures. Key sights include Todai-ji Temple, Nara Park, and Kasuga Taisha Shrine. Nara offers a peaceful retreat with a rich cultural heritage and beautiful natural surroundings.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5, // Line height
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to First Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
