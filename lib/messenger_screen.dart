import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://our.today/wp-content/uploads/2022/08/AndrewTATEAAA.jpg'),
              radius: 20,
            ),
            SizedBox(width: 16.0),
            Text(
              "Chats",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.white12,
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.camera_alt,
              size: 20.0,
              color: Colors.white60,
            )),
          ),
          SizedBox(width: 7.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.white12,
              child: IconButton(onPressed: (){}, icon: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white60,
              )),
            ),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: (BorderRadius.circular(10.0)),
                        color: Colors.white24,
                      ),
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Icon(Icons.search,
                              color: Colors.white54,
                            ),
                            SizedBox(width:10),
                            Text(
                              "Search",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 105,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildStoryItem(),
                        separatorBuilder: (context, index) => SizedBox(
                          width: 20.0,
                        ),
                        itemCount: 5,
                      ),
                    ),
                    SizedBox(height: 30),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildChatItem(),
                      separatorBuilder: (context, index) => SizedBox( height: 20),
                      itemCount: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 1. Build Item
// 2. Build List
// 3. Add Items To List

// Arrow function

Widget buildStoryItem() => Container(
  width: 60,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://our.today/wp-content/uploads/2022/08/AndrewTATEAAA.jpg'),
            radius: 30,
          ),
          CircleAvatar(
            radius: 8.5,
            backgroundColor: Colors.black,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 6.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(height: 5),
      Text(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        "Emory Andrew Tate III",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  ),
);
Widget buildChatItem() => Row(
  children:[
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://our.today/wp-content/uploads/2022/08/AndrewTATEAAA.jpg'),
          radius: 30,
        ),
        CircleAvatar(
          radius: 8.5,
          backgroundColor: Colors.black,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    SizedBox(width: 18.0),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            "Emory Andrew Tate III",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16.0
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  "How you don't have a fire in your mind that's compiling you to conquer earth??",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,
                    horizontal: 10.0),
                child: Container(
                  width: 7.0,
                  height:7.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                "03:45 am",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);