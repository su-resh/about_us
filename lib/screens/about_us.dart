import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _fb = Uri.parse('https://www.facebook.com/technologychannel.org');
final Uri _insta =
    Uri.parse('https://www.instagram.com/technologychannelofficial/');
final Uri _telegram = Uri.parse('https://t.me/technology_channel_official');
final Uri _github = Uri.parse('https://github.com/technologychannel');
final Uri _discord = Uri.parse('https://discord.com/invite/hwNSzvE92F');

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Technology Channel is an edu-tech platform where you can learn about technology, programming, and coding and grow. Technology Channel aims to provide technology-related content and tools through various mediums like websites, YouTube, mobile apps, etc. Our mission is to provide quality tech content to you and improve your technical skills. The foundation of Technology Channel is truth, honesty, and user privacy. We always protect you from harm and wrong by providing technological information, tools, etc.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 2),
              const Text(
                "What We Do?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                "We provide technology-related content and tools through various mediums like websites, YouTube, mobile apps, etc. We also provide courses and tutorials on our website and YouTube channel.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.justify,
              ),
              const Text(
                "Special Thanks:",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Special thanks to Suresh Subedi, Nisma Paudel, Sadikshya Subedi, Prakriti Adhikari, Ronica Rumba, and Prakash Shrestha for contribution to make this application better.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 2),
              const Text(
                "Contact Us:",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                "If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at:",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                    overflow: TextOverflow.fade),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.facebook,
                        size: 35,
                        color: Colors.blue,
                      ),
                      onPressed: () => _launchUrl(_fb),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram,
                          size: 35, color: Colors.pink),
                      onPressed: () => _launchUrl(_insta),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.telegram,
                          size: 35, color: Colors.blue),
                      onPressed: () => _launchUrl(_telegram),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github,
                          size: 35, color: Colors.black),
                      onPressed: () => _launchUrl(_github),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.discord,
                          size: 35, color: Colors.purple),
                      onPressed: () => _launchUrl(_discord),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Tips',
          ),
        ],
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 2:
              Navigator.pushNamed(context, '/tips');
              break;
          }
        },
      ),
    );
  }
}

Future<void> _launchUrl(Uri url) async {
  try {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  } catch (error, stackTrace) {
    // Log the error and stack trace for debugging
    debugPrint('Error launching URL: $error');
    debugPrint('Stack trace: $stackTrace');
  }
}
