
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EcommerceFivePage()
    )
);
class EcommerceFivePage extends StatelessWidget {
//  const EcommerceFivePage({Key key}) : super(key: key);
  static final String path = "lib/src/pages/ecommerce/ecommerce5.dart";
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  Widget cards(image, title, price) {
    return Container(
        height: 200,
        width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        FlipCard(
        direction: FlipDirection.HORIZONTAL, // default
          front: Container(
            child: Image.asset(

              image,

              height: 80,

              width: 80,

            ),
          ),
          back:new Container(
            child: new Column(

              children: <Widget>[

                new FlatButton(
                  child: new Text("LogIn",
                    textAlign: TextAlign.center,),
                  color:  Colors.white,
                  onPressed: null,
                ),


                new FlatButton(
                  child: new Text("SignUp",
                    textAlign: TextAlign.center,),
                  color:  Colors.white,
                  onPressed: null,
                ),
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
  Widget cards2(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: Image.asset(

                  image,

                  height: 80,

                  width: 80,

                ),
              ),
              back:new Container(
                child: new Column(

                  children: <Widget>[

                    new FlatButton(
                      child: new Text("LogIn",
                        textAlign: TextAlign.center,),
                      color:  Colors.white,
                      onPressed: null,
                    ),


                    new FlatButton(
                      child: new Text("SignUp",
                        textAlign: TextAlign.center,),
                      color:  Colors.white,
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget cards3(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.HORIZONTAL, // default
              front: Container(
                child: Image.asset(

                  image,

                  height: 80,

                  width: 80,

                ),
              ),
              back:new Container(
                child: new Column(

                  children: <Widget>[

                    new FlatButton(
                      child: new Text("LogIn",
                        textAlign: TextAlign.center,),
                      color:  Colors.white,
                      onPressed: null,
                    ),


                    new FlatButton(
                      child: new Text("SignUp",
                        textAlign: TextAlign.center,),
                      color:  Colors.white,
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Today's Special"),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fastfood,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  "Foods",
                  style: TextStyle(color: Colors.deepOrange),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.orangeAccent.shade700,
                ),
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsets.only(left: 90, bottom: 20),
                width: 299,
                height: 279,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(160),
                        bottomLeft: Radius.circular(290),
                        bottomRight: Radius.circular(160),
                        topRight: Radius.circular(10))),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Hello",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          Text("Admin",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              controller:
                              TextEditingController(text: 'Search...'),
                              cursorColor: Theme
                                  .of(context)
                                  .primaryColor,
                              style:
                              TextStyle(color: Colors.black, fontSize: 18),
                              decoration: InputDecoration(
                                  suffixIcon: Material(
                                    elevation: 2.0,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards('Assets/images/addcust.png', 'Brocoli', '30'),
                        cards2('Assets/images/one.png', 'Cabbage', '37'),
                        cards('Assets/images/one.png', 'Mango', '22'),
//                        cards('Assets/images/one.png', 'Pineapple', '90'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
