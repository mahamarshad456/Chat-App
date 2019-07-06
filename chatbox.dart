import 'package:flutter/material.dart';

import 'chat_message.dart';
class Chat extends StatefulWidget

{
  @override
  State<StatefulWidget> createState() {
   return new ChatState();
  }

}

class ChatState extends State<Chat>
{
TextEditingController _text = new TextEditingController();
final List<ChatMessage> _messages = <ChatMessage>[];
void _submitted(String text)
{
  _text.clear();

  ChatMessage message = new ChatMessage(text: text);
  setState(() {
    _messages.insert(0, message);
  });

}


  Widget _textComposerWidget()
  {
    return new IconTheme(
      data: new IconThemeData(
        color: Colors.orangeAccent
      ),
      child: new Container(
        margin: EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Flexible(child:
            new TextField(
              onSubmitted: _submitted,
              controller: _text,
              decoration: new InputDecoration.collapsed(hintText: "enter your message",
              ),
            ),),
      new IconButton(icon: new Icon(Icons.send), onPressed:()=>_submitted(_text.text),
      )
          ],

        )),
    );
  }

  @override
  Widget build(BuildContext context) {
return new Column(
  children: <Widget>[
    new Flexible(child:
    new ListView.builder(
        padding: new EdgeInsets.all(8.0),
        reverse: true,
        itemCount: _messages.length,
        itemBuilder: (_,int index)=>_messages[index]
    )),
    new Divider(height: 1.0,),
    new Container(
      decoration: new BoxDecoration(
          color: Theme.of(context).cardColor
      ),
      child: _textComposerWidget(),
    )
  ],
);

  }

}