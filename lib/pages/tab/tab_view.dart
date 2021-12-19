import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/models/destination_model.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:provider/provider.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final destinationData =
        Provider.of<DestinationModal>(context, listen: false);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            controller: _tabController,
            labelPadding: const EdgeInsets.only(left: 20, right: 20),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicator: const CircleTabIndicator(
              color: AppColors.mainColor,
              radius: 4,
            ),
            tabs: const [
              Tab(
                text: "Places",
              ),
              Tab(
                text: "Inspiration",
              ),
              Tab(
                text: "Emotion",
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          DetailPage.routName,
                          arguments: destinationData.items[index].id,
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 15,
                          top: 20,
                        ),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:
                                AssetImage(destinationData.items[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }),
              const Text("hi"),
              const Text("hi"),
            ],
          ),
        )
      ],
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;
  const CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    //implement createBoxPainter
    return _CirclePainter(
      color: color,
      radius: radius,
    );
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(
    Canvas canvas,
    Offset offset,
    ImageConfiguration configuration,
  ) {
    //implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
      configuration.size!.width / 2 - radius / 2,
      configuration.size!.height - radius,
    );
    canvas.drawCircle(
      offset + circleOffset,
      radius,
      _paint,
    );
  }
}
