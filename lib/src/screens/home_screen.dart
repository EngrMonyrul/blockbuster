import 'package:blockbuster/common/constants/colors.dart';
import 'package:blockbuster/common/constants/components.dart';
import 'package:blockbuster/common/constants/string.dart';
import 'package:blockbuster/common/widgets/custom_searchBar.dart';
import 'package:blockbuster/src/providers/home_screen_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../common/widgets/custom_appbar2.dart';
import '../../common/widgets/drawer_item.dart';

/*--------------------> Responsive Sizes
Desktop: 1040
Tablet: 960
Mobile: 640
<---------------------------------------*/

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late YoutubePlayerController youtubePlayerController;
  bool youtubePlayerStarted = false;

  void setYoutubePlayer() async {
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: "upDhKSx7P7E",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        enableCaption: true,
        loop: true,
      ),
    );

    if (youtubePlayerController.value.isReady) {
      setState(() {
        youtubePlayerStarted = true;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setYoutubePlayer();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final responseView = MediaQuery.of(context).size.width;
    final homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      drawer: Drawer(
        child: drawerItem(context, homeScreenProvider),
      ),
      appBar: responseView < 961 ? buildAppBar(context, screenSize) : null,
      body: SingleChildScrollView(
        child: Consumer<HomeScreenProvider>(
          builder: (context, value, child) {
            return Center(
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: AppComponents.maxWidth),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenSize.height,
                        width: screenSize.width,
                        child: Row(
                          children: [
                            Visibility(
                              visible: responseView > 960,
                              child: Expanded(
                                flex: 3,
                                child: drawerItem(context, value),
                              ),
                            ),
                            Expanded(
                              flex: 11,
                              child: Container(
                                alignment: Alignment.topCenter,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                color: ColorConsts.bgColor,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: AppComponents.homePageItem
                                            .asMap()
                                            .entries
                                            .map((e) {
                                          return InkWell(
                                            onTap: () {
                                              value.setSelectedHomeItem(
                                                  value: e.key);
                                            },
                                            child: Text(e.value,
                                                style: value.selectedHomeItem ==
                                                        e.key
                                                    ? Theme.of(context)
                                                        .textTheme
                                                        .titleLarge
                                                        ?.copyWith(
                                                            color: Colors.white)
                                                    : Theme.of(context)
                                                        .textTheme
                                                        .titleMedium
                                                        ?.copyWith(
                                                            color:
                                                                Colors.grey)),
                                          );
                                        }).toList(),
                                      ),
                                      const SizedBox(height: 30),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Text("Trending",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                    color: Colors.white)),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: AspectRatio(
                                          aspectRatio: (16 / 9),
                                          child: YoutubePlayer(
                                            controller: youtubePlayerController,
                                            showVideoProgressIndicator: true,
                                            onReady: (){
                                              youtubePlayerController.addListener(() {});
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: responseView > 1024,
                              child: Expanded(
                                flex: 3,
                                child: searchArea(screenSize, context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenSize.height * .4,
                        width: screenSize.width,
                        color: ColorConsts.bgColor,
                        child: Column(
                          children: [
                            Text("Disclaimer",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: Colors.white)),
                            const Text("""
                              CineSphere or blockbusterfishing.web.app does not host any of the files mentioned on this blog. This blog only points out to various links on the Internet that already exist and are uploaded by other websites or users there. Since we don’t host any files we cannot reupload it if it have been deleted but can try to find alternate links if you notify us. If you have any clarifications to be made or if you find any contents in this site which you think can be offensive. Do Contact Us and the content will be removed or modified accordingly.
                              """),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container searchArea(Size screenSize, BuildContext context) {
    return Container(
      color: ColorConsts.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: buildSearch(screenSize)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Popular Movies",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 5),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: screenSize.height * .1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://sm.ign.com/t/ign_nordic/lists/t/the-10-hig/the-10-highest-grossing-marvel-movies-of-all-time_78at.1280.jpg"),
                        fit: BoxFit.cover,
                        opacity: 0.5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: Colors.green,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("6.1/10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.white)),
                              ),
                            ),
                            Card(
                              color: Colors.deepOrange,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text("Action",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        Card(
                            color: Colors.black12,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: FittedBox(
                                  child: Text("Movie Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
