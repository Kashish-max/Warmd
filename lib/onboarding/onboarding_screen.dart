import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_indicator/page_indicator.dart';

import '../common/common.dart';
import '../common/delayable_state.dart';

class OnboardingScreen extends StatefulWidget {
  final Function onOnboardingFinished;

  const OnboardingScreen({@required this.onOnboardingFinished, Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends DelayableState<OnboardingScreen> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/sky.svg',
          ),
          Gaps.h64,
          Expanded(
            child: PageIndicatorContainer(
              child: PageView.builder(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, i) {
                  if (i == 0) {
                    return Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 350),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/narwhal.svg',
                            ),
                            const Text(
                              'Understand your impact',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            Gaps.h32,
                            Text(
                              'See how your activities impact planet, animals & more.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[600], fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (i == 1) {
                    return Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 350),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/pinguin.svg',
                            ),
                            const Text(
                              'Take action to reduce impact',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            Gaps.h32,
                            Text(
                              'Taking small steps, everyday, are cornerstone to drive big changes for the future.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey[600], fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  // else {
                  //   return Center(
                  //     child: ConstrainedBox(
                  //       constraints: const BoxConstraints(maxWidth: 350),
                  //       child: Column(
                  //         children: [
                  //           SvgPicture.asset(
                  //             'assets/seal.svg',
                  //           ),
                  //           const Text(
                  //             'A climate-conscious community',
                  //             style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  //           ),
                  //           Gaps.h32,
                  //           Text(
                  //             'Be part of a community to share your ideas, progress & much more.',
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(color: Colors.grey[600], fontSize: 18),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   );
                  // }
                },
              ),
              align: IndicatorAlign.bottom,
              length: 2,
              padding: const EdgeInsets.all(10),
              indicatorColor: Colors.grey[300],
              indicatorSelectorColor: warmdDarkBlue,
              shape: IndicatorShape.circle(),
            ),
          ),
          Gaps.h24,
          Center(
            child: ElevatedButton(
              onPressed: () {
                widget.onOnboardingFinished();
              },
              child: const Text(
                'GET STARTED',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Gaps.h64,
        ],
      ),
    );
  }
}