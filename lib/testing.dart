import 'package:flutter/material.dart';


class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:Column(
                   children: [
                    const Text('user Setting',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                      // image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/220px-Cristiano_Ronaldo_2018.jpg') 
                                
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration:  BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                           const ListTile(
                              leading: SizedBox(
                                height: 60,
                                width: 60,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/220px-Cristiano_Ronaldo_2018.jpg'),
                                
                                ),
                              ),
                              title: Text('name ',style: TextStyle(fontSize: 24),),
                              subtitle: Text('I .....'),
                            ),
                            Column(
                              children: [
                                Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: const[
                                       Text('267'),
                                       Text('39'),
                                       Text('846'),
                                       Text('846'),
                                     ],
                                    ),
                                     Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: const [
                                                Text('Track'),
                                                Text('Coupons'),
                                                Text('collect'),
                                                Text('collect'),
                                         ],

                                )
                              ],
                            ),
                          ],
                        ),
                       ),
                     ),
                     
      Container(
         height: 120,
         width: double.infinity,
         child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            //  IconCustoteWidget(iconData: Icons.currency_exchange, iconName: 'Wallet'),
            //   IconCustoteWidget(iconData: Icons.delivery_dining, iconName: 'Delivery'),
            //    IconCustoteWidget(iconData: Icons.message, iconName: 'Message'),
            //     IconCustoteWidget(iconData: Icons.room_service, iconName: 'Service'),
           ]
           ),
       ),
      ),
       SizedBox(
         height:300,
         width: double.infinity,
         child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
         child: Column(
           children: const [ ListTile(
            leading:CircleAvatar(
             backgroundColor: Colors.blue,
             child:  Icon(Icons.local_airport,color: Colors.white,),
            ),
            title: Text('Location Address'),
            subtitle: Text('flutter'),

           ),
           Card(
             child: ListTile(
             leading: CircleAvatar(
               backgroundColor: Color.fromARGB(255, 209, 140, 140),
               child: Icon(Icons.key, color: Colors.blue,),
             ),
             title: Text('Privacy'),
             subtitle: Text('system permission change'),
             ),
           ),
           Card(
            child: ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.amber,
               child: Icon(Icons.menu,color: Colors.blueAccent,),
             ),
             title: Text('General'),
             subtitle: Text('Basic funtion setting'),
            ),
           ),
           Card(
             child: ListTile(
               leading: CircleAvatar(
                 backgroundColor: Color.fromARGB(255, 219, 211, 89),
                 child: Icon(Icons.notifications_active, color: Colors.blueAccent,),
               ),
               title: Text('Notificationa'),
               subtitle: Text('Take over the news in time'),
             ),
           ),
           Card(
             child: ListTile(
               leading: CircleAvatar(
                 backgroundColor: Color.fromARGB(255, 68, 70, 44),
                 child: Icon(Icons.question_answer,color: Colors.blueGrey,),
                 
               ),
               title: Text('Support'),
               subtitle: Text('We are here to help'),
             ),
           )
           ],
           
         ),
       
       ),
       ),
                   ],
                 ),
              
             ),
        ),
        );
        
  }
}

