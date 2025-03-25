
  import 'package:flutter/material.dart';
import 'package:whatsapp_ui/View/MessageScreen/message_screen.dart';

class HomeView extends StatefulWidget {
    const HomeView({super.key});

    @override
    State<HomeView> createState() => _HomeViewState();
  }

  class _HomeViewState extends State<HomeView> {

  List<Map> chatList = [
    {
      "name":"eayaz uddin",
      "image":"https://images.unsplash.com/photo-1596502059330-be10388e3ba0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbGUlMjBwcm9maWxlfGVufDB8fDB8fHww",
      "last_msg":"hello",
      "time":"07:00 AM",
      "count": 0
    },
    {
      "name":"eayaz",
      "image":"https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?uid=R181616400&ga=GA1.1.2012290316.1732160641&semt=ais_hybrid",
      "last_msg":"Hi",
      "time":"08:00 AM",
      "count": 1
    },
    {
      "name":"Aftab",
      "image":"https://images.unsplash.com/photo-1579038773867-044c48829161?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbGUlMjBwcm9maWxlfGVufDB8fDB8fHww",
      "last_msg":"how are you?",
      "time":"09:00 AM",
      "count": 0
    },
    {
      "name":"Amaz uddin",
      "image":"https://img.freepik.com/free-photo/portrait-young-bearded-man-suit-looking-forward_171337-18606.jpg?uid=R181616400&ga=GA1.1.2012290316.1732160641&semt=ais_hybrid",
      "last_msg":"what is your name?",
      "time":"10:00 AM",
      "count": 0
    },
    {
      "name":"Mahtab uddin",
      "image":"https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
      "last_msg":"love",
      "time":"11:00 PM",
      "count": 4
    },
    {
      "name":"Shakil",
      "image":"https://images.unsplash.com/photo-1579038773867-044c48829161?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbGUlMjBwcm9maWxlfGVufDB8fDB8fHww",
      "last_msg":"Bye",
      "time":"07:00 AM",
      "count": 0
    },
    {
      "name":"Monowar",
      "image":"https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
      "last_msg":"hello",
      "time":"07:00 AM",
      "count": 3
    },
    {
      "name":"Riaz",
      "image":"https://img.freepik.com/free-photo/cheerful-young-man-posing-isolated-grey_171337-10579.jpg?uid=R181616400&ga=GA1.1.2012290316.1732160641&semt=ais_hybrid",
      "last_msg":"hello",
      "time":"07:00 AM",
      "count": 0
    },
    {
      "name":"Helal",
      "image":"https://images.unsplash.com/photo-1596502059330-be10388e3ba0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbGUlMjBwcm9maWxlfGVufDB8fDB8fHww",
      "last_msg":"hello",
      "time":"07:00 AM",
      "count": 1
    },
    {
      "name":"eayaz uddin",
      "image":"https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
      "last_msg":"hello",
      "time":"07:00 AM",
      "count": 2
    },
    {
      "name":"Shakib",
      "image":"https://images.unsplash.com/photo-1596502059330-be10388e3ba0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hbGUlMjBwcm9maWxlfGVufDB8fDB8fHww",
      "last_msg":"hello",
      "time":"12:00 AM",
      "count": 6
    }
  ];

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075E55),
            title: Text("Whatsapp",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),

            actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white.withValues(alpha: 0.5))),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white.withValues(alpha: 0.5),))
            ],
            bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withValues(alpha: 0.6),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ]),

          ),
          body: TabBarView(children: [
            Text("1 tab"),
           ListView.builder(
             itemCount: chatList.length,
             itemBuilder: (context, index) {
             return ListTile(
               onTap: (){
                 // print(index);
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(name: chatList[index]["name"],image: chatList[index]["image"],),));
               },
               leading: CircleAvatar(
                 backgroundImage: NetworkImage(chatList[index]["image"]),
               ),
               title: Text(chatList[index]["name"]??" name is empty",style: TextStyle(
                 fontWeight: FontWeight.bold
               ),),
               subtitle: Text(chatList[index]["last_msg"]??" ",
                   maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                     color: Colors.black.withValues(alpha: 0.6)
                   ),
               ),
               trailing: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Text(chatList[index]["time"],style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: chatList[index]["count"]==0? Colors.black: Color(0xFF10CE62)
                   ),),
                   chatList[index]["count"] == 0? SizedBox():Container(
                     height: 20,
                     width: 20,
                     decoration: BoxDecoration(
                       color: Color(0xFF10CE62),
                       shape: BoxShape.circle
                     ),
                     child: Center(
                       child: Text(chatList[index]["count"].toString(),style: TextStyle(
                         color: Colors.white
                       ),),
                     ),
                   ),
                 ],
               ),

             );
           },),
            Text("3 tab"),
            Text("4 tab")
          ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF075E55),
            shape: CircleBorder(),
            onPressed: (){
            
          },
          child: Icon(Icons.message,color: Colors.white,),
          ),
        ),
      );
    }
  }
