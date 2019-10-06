import 'package:flutter_web/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
         
          flex: 1,
          child: Image.asset(
            "luffy.jpeg", 
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 90.0),
        Expanded(
  
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
      
                "Pagina teste",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 50.0,
                    fontFamily: 'Merriweather'),
              ),
              const SizedBox(height: 14.0), // SizedBox用来增加间距
              Text(
                "testando as coisas",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                    fontFamily: "Microsoft Yahei"),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {}, 
                color: Color(0xFFCFE8E4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child:
                      Text("Quero mudar a fonte", style: TextStyle(fontFamily: "Open Sans")),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 100.0),
      ],
    );
  }
}
