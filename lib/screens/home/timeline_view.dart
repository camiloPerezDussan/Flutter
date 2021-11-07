part of app.home;

class TimelineView extends StatelessWidget {
  static String route = '${HomeView.route}';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          //TODO: fix color on title header
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionsScreenHeigth(14),
            color: secondaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              Center(
                child: Text('Timeline view'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(currentPage: MenuPage.home),
    );
  }
}
