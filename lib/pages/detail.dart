
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String title;
  final String url;
  final String date;

  const Detail({
    super.key,
    required this.title,
    required this.url,
    required this.date,
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
        title: const Text('News Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height / 3,
                  width: size.width,
                  child: Image.network(
                    widget.url,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.image, size: 60),
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 3,
                  width: size.width,
                  child: const Center(
                    child: Icon(
                      Icons.play_circle_fill_rounded,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'PCPS NEWS',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(widget.date),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '${widget.title}. Stay updated with the latest news, '
                        'events, and announcements from PCPS.',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'More News',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
    );
  }
}
