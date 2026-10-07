import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

                  children: [
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw=",
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          height: size.height / 4.5,
                          width: size.width / 1.4,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),

                        Positioned(
                          bottom: 60,
                          left: 30,
                          child: Container(
                            width: size.width / 2,
                            child: Text(
                              "Dashain ko bich ma bida diyena etra ko happy dashai",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Text(
                            "Dashain ko bich ma bida diyena etra ko happy dashai",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 30,
                            child: Icon(Icons.play_circle_fill_rounded,color: Colors.white, size: 23,)
                        )
                      ],
                    ),
                  ],
            ),
          ),
          Row (
            children:[
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20)

                ),
                  child: Image.network(
                      fit: BoxFit.cover,"https://media.gettyimages.com/id/468877597/photo/electrotherapy.jpg?s=612x612&w=0&k=20&c=RRkZJI1G98fnzCdmxIzy1wKcASzV03gLJ9dR8uS-JXw="),
                )
            ],
          )
        ],
      ),
    );
  }
}