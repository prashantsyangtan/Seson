import 'package:flutter/material.dart';
import 'detail.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget horizontallistitem(
      Size size,
      String title,
      String url,
      String date,
      ) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Detail(
                title: title,
                url: url,
                date: date,
              ),
            ),
          );
      },
      child: Stack(
        children: [
          Container(
            width: size.width / 1.4,
            height: size.height / 2.5,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black38,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.image, size: 50),
                  );
                },
              ),
            ),
          ),
          Container(
            width: size.width / 1.4,
            height: size.height / 2.5,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26,
            ),
          ),
          Positioned(
            bottom: 65,
            left: 35,
            child: SizedBox(
              width: size.width / 1.8,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 35,
            child: Text(
              date,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Positioned(
            bottom: 35,
            right: 35,
            child: Icon(
              Icons.play_circle,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }

  Widget verticallistitem(
      Size size,
      String title,
      String url,
      String date,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Detail(
              title: title,
              url: url,
              date: date,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black38,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image, size: 40);
                      },
                    ),
                  ),
                ),
                const Icon(
                  Icons.play_circle_fill_rounded,
                  size: 45,
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(width: 15),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'PCPS NEWS',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            date,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    const imageUrl =
        'https://media.gettyimages.com/id/1306704388/photo/the-photographer.jpg?s=612x612&w=0&k=20&c=awoiSLOA22QtH_-4oC_sZphhExbANjc5t73JMM1NZ40=';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontallistitem(
                  size,
                  'Happy Dashain: PCPS Family',
                  imageUrl,
                  '02 Oct 2026',
                ),
                horizontallistitem(
                  size,
                  'Latest PCPS News and Updates',
                  imageUrl,
                  '03 Oct 2026',
                ),
                horizontallistitem(
                  size,
                  'Campus News',
                  imageUrl,
                  '04 Oct 2026',
                ),
                horizontallistitem(
                  size,
                  'Student Activities',
                  imageUrl,
                  '05 Oct 2026',
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticallistitem(
                    size,
                    'Happy Birthday to You',
                    imageUrl,
                    '02 Feb 2026',
                  ),
                  verticallistitem(
                    size,
                    'Latest College News',
                    imageUrl,
                    '03 Feb 2026',
                  ),
                  verticallistitem(
                    size,
                    'Student Activities and Events',
                    imageUrl,
                    '04 Feb 2026',
                  ),
                  verticallistitem(
                    size,
                    'PCPS Campus Updates',
                    imageUrl,
                    '05 Feb 2026',
                  ),
                  verticallistitem(
                    size,
                    'College Announcements',
                    imageUrl,
                    '06 Feb 2026',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
