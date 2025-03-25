import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String name;
  final String image;

  const MessageScreen({super.key, required this.name, required this.image});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  List<Map> chatDetails = [
    {
      "message":"hello",
      "is_me":true,
      "time": "05:00"
    },
    {
      "message":"hi",
      "is_me":false,
      "time": "05:01"
    },
    {
      "message":"how are you?",
      "is_me":true,
      "time": "05:02"
    },
    {
      "message":"hello",
      "is_me":false,
      "time": "05:03"
    },{
      "message":"hello",
      "is_me":true,
      "time": "05:04"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E55),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.image),
                  ),
                  title: Text(widget.name ??" name is empty",style: TextStyle(
          fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),

          subtitle: Text(" Last seen 06:00 AM",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6)
            ),
          ),
          trailing: Icon(Icons.more_vert,color: Colors.white,),
                ),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(15),
              itemCount: chatDetails.length,
              itemBuilder: (context, index) {
                final data = chatDetails[index];
                return Column(
                  crossAxisAlignment: data["is_me"]==true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          constraints: BoxConstraints(
                            maxWidth: 200,
                          ),
                          decoration: BoxDecoration(
                              color: data["is_me"]==true?Color(0xFF075E55) : Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)
                              )
                          ),
                          child: Center(
                            child: Text(data["message"],style: TextStyle(
                                color: Colors.white
                            ),),
                          ),
                        ),
                        Text(data["time"])
                      ],
                    ),
                  ],
                );
              },),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: .1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.link),
                          hintText: "Enter your message",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Color(0xFF075E55),
                  child: Icon(Icons.send,color: Colors.white,),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
