import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  Bubble({this.message, this.isMe});

  final String message;
  final isMe;

  @override
  Widget build(BuildContext context) {
    final bg = isMe ? Colors.grey.shade100 : Colors.white;
    final align = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;

    final radius = isMe
        ? BorderRadius.only(
      topLeft: Radius.circular(12.0),
      bottomLeft: Radius.circular(12.0),
      bottomRight: Radius.circular(12.0),
    ):
    BorderRadius.only(
      topRight: Radius.circular(12.0),
      bottomLeft: Radius.circular(12.0),
      bottomRight: Radius.circular(12.0),
    );

    return Column(
      crossAxisAlignment: align,
      children: <Widget>[
        Container(
          margin:  isMe ? const EdgeInsets.only(left:100.0,right: 12,bottom: 4,top: 4) :
          const EdgeInsets.only(left:12,right: 100,bottom: 4,top: 4),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: bg,
            borderRadius: radius,
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8.0),
                child: Text(message),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SimpleBubble extends StatelessWidget {
  SimpleBubble({this.message});

  final String message;


  @override
  Widget build(BuildContext context) {
    final bg =  Colors.white;


    final radius =
    BorderRadius.only(
      topRight: Radius.circular(12.0),
      bottomLeft: Radius.circular(12.0),
      bottomRight: Radius.circular(12.0),
      topLeft: Radius.circular(12.0),
    );

    return Column(

      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left:4,right: 4,bottom: 0,top: 5),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5,
                  spreadRadius: 1.0,
                  color: Colors.black.withOpacity(.12))
            ],
            color: bg,
            borderRadius: radius,
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 8.0,left: 8.0),
                child: Text(message),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BubbleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: .9,
        title: Text(
          'Putra',
          style: TextStyle(color: Colors.green),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.videocam,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.green,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Bubble(
              message: 'Hi there, this is a message',

              isMe: false,
            ),
            Bubble(
              message: 'Whatsapp like bubble talk',

              isMe: false,
            ),
            Bubble(
              message: 'Nice one, Flutter is awesome',


              isMe: true,
            ),
            Bubble(
              message: 'I\'ve told you so dude!',

              isMe: false,
            ),
          ],
        ),
      ),
    );
  }
}
