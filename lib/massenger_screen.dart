import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class massengerScreen extends StatelessWidget {
  const massengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/69174950?s=60&v=4'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 90.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index)
                        =>buildStory(),
                  separatorBuilder: (context,index)=>SizedBox(
                    width: 20.0,
                  ),
                  itemCount:5 ,
                ),
              ),
              SizedBox(height: 20.0,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:true,
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(height: 10.0,),
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem()=>Row(
    children: [
      Container(
        width: 60.0,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/69174950?s=60&v=4'),
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'mostafa mohamed Abdelnabi',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      SizedBox(width: 5.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('mostafa mohamed',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 16,),),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Expanded(child: Text('hello from mostafa this chat is from flutter',maxLines: 1,overflow: TextOverflow.ellipsis,)),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration:BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ) ,
                  ),
                ),
                Text('9:05 pm'),
              ],
            ),

          ],
        ),
      ),
    ],
  );
  Widget buildStory()=>Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.grey[300],
    ),
    padding: EdgeInsets.all(
      5.0,
    ),
    child: Row(
      children: [
        Icon(Icons.search),
        SizedBox(
          width: 15.0,
        ),
        Text('search'),
      ],
    ),
  );

}
