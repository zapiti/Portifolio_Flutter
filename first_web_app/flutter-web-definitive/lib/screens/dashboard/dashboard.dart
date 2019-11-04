import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_definitive/services/api_service.dart';
import 'package:flutter_web_definitive/utils/raw_data.dart';
import 'package:flutter_web_definitive/widgets/table_card.dart';
import 'package:flutter_web_definitive/widgets/ticket_cards.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool loading = false;

  @override
  void initState() {
    super.initState();
    getDataFromUi();
  }

  getDataFromUi() async {
    loading = false;
    await ApiData.getData();
    setState(() {
      loading = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Column(
                children: <Widget>[
                  MediaQuery.of(context).size.width < 1300
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List<Widget>.generate(4, (i) {
                            return tickets(colors[i], context, icons[i],
                                randomNumbers[i], newTexts[i]);
                          }),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List<Widget>.generate(4, (i) {
                            return tickets(colors[i], context, icons[i],
                                randomNumbers[i], newTexts[i]);
                          })),
                  SizedBox(
                    height: 16,
                  ),
                  loading
                      ? tableCard(
                          context,
                          ApiData.githubTrendingModel,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ],
              ),
            ),
          ]),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 1300 ? 4 : 3,
            childAspectRatio:
                MediaQuery.of(context).size.width < 1300 ? 0.6 : 0.65,
            mainAxisSpacing: 10,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://placeimg.com/640/480/nature/grayscale',
                          fit: BoxFit.fill,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Imagem de natureza",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "800/night",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HelveticaNeue',
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.location_on),
                                        Text(
                                          "Milan, Italy",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'HelveticaNeue',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              );
            },
            childCount: 8,
          ),
        )
      ],
    );
  }
}
