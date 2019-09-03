import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'UI Design ft. Now United',
    home: Home(),
    theme: ThemeData(
      fontFamily: 'Avenir',
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imgUrls = ['./images/amy', './images/bailey', './images/diarra', './images/heyoon', './images/hina', './images/joalin', './images/josh', './images/krys', './images/lamar', './images/noah', './images/sabina', './images/shivani', './images/sina', './images/sofiya'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        title: Text("Now United", style: TextStyle(
          fontFamily: 'Avenir Bold',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: ()=>{},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()=>{},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: imgUrls.length,
        itemBuilder: (context, i){
          return Material(
            child: Hero(
              tag: imgUrls[i],
              child: Material(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(name: imgUrls[i],)));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.65,
                    margin: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(imgUrls[i]+'.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage: AssetImage('./images/bailey1.jpg'),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Now United", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                  ),),
                                  Text("Global POP Group", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomLeft,
                          child: Text(imgUrls[i].substring(9).toUpperCase(), style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),),
                        )


                      ],
                    ),
                  ),
                ),
              )
            ),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  final String name;
  SecondPage({@required this.name});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(
      //     color: Colors.black,
      //   ),
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   title: CircleAvatar(
      //     radius: 20.0,
      //     backgroundImage: AssetImage('./images/bailey1.jpg'),
      //   ),
      //   centerTitle: true,
      // ),
      body: Hero(
          tag: widget.name,
          child: Material(
            child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.name+'.jpg'),
                fit: BoxFit.cover,
              )
            ),
            child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 20.0, left: 0.0, top: 35.0),
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage('./images/bailey1.jpg'),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Now United", style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0
                                  ),),
                                  Text("Global POP Group", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.name.substring(9).toUpperCase(), style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("Now United sometimes abbreviated as NU is a global pop music group created in December, 2017 by American Idol creator Simon Fuller, and is managed by XIX Entertainment. The group consists of 14 members, each of a different nationality.", style: TextStyle(color: Colors.white,)),
                              SizedBox(
                                height: 10.0,
                              ),
                              RaisedButton(
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed: (){
                                  
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Know more", style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    Icon(Icons.chevron_right, color: Colors.white,)
                                  ],
                                ),
                              )
                            ],
                          )
                        )
                      ],
                    ),
          ),
          )
        ),
    );
  }
}