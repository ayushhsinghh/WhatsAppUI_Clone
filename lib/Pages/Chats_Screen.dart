import 'package:WhatsAppclone/Models/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).accentColor,
                    backgroundImage: NetworkImage(dummyData[i].avatarURL),
                    radius: 20.0,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  subtitle: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        dummyData[i].desc,
                        style: TextStyle(fontSize: 15.0),
                      )),
                )
              ],
            ));
  }
}
