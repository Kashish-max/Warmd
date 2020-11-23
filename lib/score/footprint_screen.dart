import 'dart:io';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';
import 'package:warmd/common/common.dart';
import 'package:warmd/common/criterias.dart';
import 'package:warmd/common/states.dart';
import 'package:warmd/generated/locale_keys.g.dart';

import 'score_widget.dart';

class FootprintScreen extends StatelessWidget {
  final Function(BuildContext) onSeeClimateChangeTapped;
  final Function(BuildContext) onSeeAdvicesTapped;
  final Function(BuildContext) onRestartTapped;
  final Function(BuildContext) onSeeAboutTapped;

  const FootprintScreen(
      {@required this.onSeeClimateChangeTapped,
      @required this.onSeeAdvicesTapped,
      @required this.onRestartTapped,
      @required this.onSeeAboutTapped,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CriteriasState>();

    final sortedCategories = state.categories.where((cat) => cat.co2EqTonsPerYear() > 0).toList();
    sortedCategories.sort((a, b) => -a.co2EqTonsPerYear().compareTo(b.co2EqTonsPerYear()));

    final shareContainer = GlobalKey();

    return Scaffold(
      backgroundColor: warmdLightBlue, // for iOS scrolling effect
      body: SafeArea(
        child: SingleChildScrollView(
          child: RepaintBoundary(
            key: shareContainer,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildHeader(context, sortedCategories, state, shareContainer),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: _buildFootprintAnalysis(context, state, sortedCategories),
                    ),
                  ),
                  Gaps.h92,
                  _buildGoToSourcesButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(
      BuildContext context, List<CriteriaCategory> sortedCategories, CriteriasState state, GlobalKey shareContainer) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
            color: warmdLightBlue,
          ),
          margin: const EdgeInsets.only(bottom: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 44),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 220),
                        child: Text(
                          LocaleKeys.footprintTitle.tr(),
                          style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Platform.isIOS ? CupertinoIcons.share : Icons.share),
                        onPressed: () {
                          ShareFilesAndScreenshotWidgets().shareScreenshot(
                            shareContainer,
                            800,
                            'Warmd',
                            "warmd_carbon_footprint.png",
                            "image/png",
                          );
                        }),
                  ],
                ),
              ),
              Center(child: ScoreWidget(state)),
              Gaps.h32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Center(
                  child: TextButton(
                    onPressed: () => onSeeClimateChangeTapped(context),
                    child: Text(
                      LocaleKeys.footprintWarning.tr(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold, color: warmdDarkBlue),
                    ),
                  ),
                ),
              ),
              Gaps.h48,
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () => onSeeAdvicesTapped(context),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(warmdGreen),
                      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                      textStyle: MaterialStateProperty.all<TextStyle>(Theme.of(context).textTheme.bodyText2.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                      minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(64)),
                      padding:
                          MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 32, vertical: 14)),
                    ),
                    child: Text(
                      LocaleKeys.seeAdvices.tr(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFootprintAnalysis(BuildContext context, CriteriasState state, List<CriteriaCategory> sortedCategories) {
    const colors = {
      UtilitiesCategory: Color(0xFFF9A500),
      TravelCategory: warmdRed,
      FoodCategory: warmdGreen,
      GoodsCategory: warmdBlue,
    };

    return Column(
      children: [
        Gaps.h64,
        Text(
          LocaleKeys.footprintRepartitionTitle.tr(),
          style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold),
        ),
        Gaps.h24,
        SizedBox(
          height: 216,
          child: Row(
            children: [
              Expanded(
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: sortedCategories
                        .map((cat) => PieChartSectionData(
                              color: colors[cat.runtimeType],
                              value: cat.co2EqTonsPerYear(),
                              title: LocaleKeys.shortCo2EqTonsValue.tr(args: [cat.co2EqTonsPerYear().toStringAsFixed(1)]),
                              radius: 85,
                              titleStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                              badgeWidget: _PieBadge(
                                'assets/${cat.key}.svg',
                                size: 40,
                                borderColor: colors[cat.runtimeType],
                              ),
                              badgePositionPercentageOffset: .98,
                            ))
                        .toList(),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: sortedCategories
                      .map((cat) => _PieIndicator(
                            color: colors[cat.runtimeType],
                            text: cat.title,
                            textColor: warmdDarkBlue,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
        Gaps.h64,
        Text(
          LocaleKeys.footprintEvolutionTitle.tr(),
          style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold),
        ),
        Gaps.h32,
        Text(
          'Compute your footprint every month and see your evolution.\n\nThe world must reduce its emissions by at least 6% per year. What about you?',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.subtitle2.copyWith(color: warmdDarkBlue),
        ),
        Gaps.h32,
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 48),
          child: _FootprintChart(),
        ),
        Gaps.h48,
        Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: ElevatedButton(
              onPressed: () {
                onRestartTapped(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey[200]),
                shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
                textStyle: MaterialStateProperty.all<TextStyle>(Theme.of(context).textTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.bold,
                    )),
                minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(64)),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 32, vertical: 14)),
              ),
              child: Text(
                LocaleKeys.redoQuestionnaire.tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold, color: Colors.grey[600]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGoToSourcesButton(BuildContext context) {
    return GestureDetector(
      onTap: () => onSeeAboutTapped(context),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(36), topRight: Radius.circular(36)),
          color: warmdLightBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  LocaleKeys.seeAbout.tr(),
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: warmdDarkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Gaps.w24,
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: warmdDarkBlue,
                ),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PieBadge extends StatelessWidget {
  final String svgAsset;
  final double size;
  final Color borderColor;

  const _PieBadge(
    this.svgAsset, {
    Key key,
    @required this.size,
    @required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      child: Center(
        child: SvgPicture.asset(
          svgAsset,
        ),
      ),
    );
  }
}

class _PieIndicator extends StatelessWidget {
  final Color color;
  final String text;
  final double size;
  final Color textColor;

  const _PieIndicator({
    Key key,
    this.color,
    this.text,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 42),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Row(
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            Gaps.w4,
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText2.copyWith(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FootprintChart extends StatelessWidget {
  const _FootprintChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final historyState = context.watch<HistoryState>();
    final scores = historyState.scores;
    // FOR TEST PURPOSE ONLY
    // final firstScoreDate = DateTime.utc(2020, 4);
    // final scores = {
    //   firstScoreDate: 30.0,
    //   DateTime.utc(firstScoreDate.year, firstScoreDate.month + 1): 29.0,
    //   DateTime.utc(firstScoreDate.year, firstScoreDate.month + 2): 30.0,
    //   DateTime.utc(firstScoreDate.year + 1, firstScoreDate.month): 18.0
    // };
    final improvementPercent = historyState.improvementPercent;

    final years = scores.keys.map((d) => d.year);
    final numYears = max(years.last - years.first + 1, 2);

    final maxX = numYears * 12.0; // each month is represented
    final maxY = scores.values.reduce(max) + 5;

    int previousTitleYear;

    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: [
          LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: Colors.white.withOpacity(0.9),
                ),
                touchCallback: (LineTouchResponse touchResponse) {},
                handleBuiltInTouches: true,
              ),
              gridData: FlGridData(
                show: false,
              ),
              titlesData: FlTitlesData(
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    final year = years.first + 1 + value ~/ 12;

                    //TODO Allow to always display all years but not very precise and may be ugly on small devices
                    if (previousTitleYear != year) {
                      if (previousTitleYear != null) {
                        previousTitleYear = year;
                        return year.toString();
                      } else {
                        previousTitleYear = year;
                      }
                    }
                    return '';
                  },
                  getTextStyles: (value) => Theme.of(context).textTheme.caption.copyWith(color: warmdDarkBlue),
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    if (value > 0 && value % 5 == 0) {
                      return value.toInt().toString();
                    }
                    return '';
                  },
                  getTextStyles: (value) => Theme.of(context).textTheme.caption.copyWith(color: warmdDarkBlue),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: const Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.black12,
                  ),
                  left: BorderSide(
                    width: 2,
                    color: Colors.black12,
                  ),
                  right: BorderSide(
                    color: Colors.transparent,
                  ),
                  top: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              minX: 0,
              maxX: maxX,
              maxY: maxY,
              minY: 0,
              lineBarsData: [
                _buildGoalLine(scores, improvementPercent, maxX),
                _buildScoresLine(numYears, scores),
              ],
              axisTitleData: FlAxisTitleData(
                leftTitle: AxisTitle(
                  showTitle: true,
                  titleText: LocaleKeys.footprintEvolutionTonsAxis.tr(),
                  textStyle: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold, color: warmdDarkBlue),
                ),
                bottomTitle: AxisTitle(
                  showTitle: true,
                  titleText: LocaleKeys.footprintEvolutionYearAxis.tr(),
                  textStyle: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold, color: warmdDarkBlue),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  switch (improvementPercent) {
                    case 6:
                      historyState.improvementPercent = 8;
                      break;
                    case 8:
                      historyState.improvementPercent = 10;
                      break;
                    case 10:
                      historyState.improvementPercent = 12;
                      break;
                    case 12:
                      historyState.improvementPercent = 14;
                      break;
                    case 14:
                      historyState.improvementPercent = 6;
                      break;
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: warmdGreen.withOpacity(.1),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text(
                    '$improvementPercent% ▼',
                    style: Theme.of(context).textTheme.caption.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  LineChartBarData _buildGoalLine(Map<DateTime, double> scores, int improvementPercent, double maxX) {
    var goalValue = scores.entries.first.value;

    return LineChartBarData(
      spots: List.generate((maxX ~/ 12) + 1, (i) {
        if (i > 0) {
          goalValue = goalValue - (goalValue / 100 * improvementPercent);
        }
        return FlSpot(i * 12.0, (goalValue * 10).round() / 10);
      }),
      isCurved: true,
      colors: [
        warmdGreen,
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: true, colors: [
        warmdGreen.withOpacity(.15),
      ]),
    );
  }

  LineChartBarData _buildScoresLine(int numYears, Map<DateTime, double> scores) {
    final minYear = scores.entries.first.key.year;
    final minMonth = scores.entries.first.key.month;

    final spots = scores.entries
        .map((e) => FlSpot((((e.key.year - minYear) * 12.0) + e.key.month) - minMonth, (e.value * 10).round() / 10))
        .toList();

    return LineChartBarData(
      spots: spots,
      isCurved: true,
      colors: [
        warmdBlue,
      ],
      barWidth: 4,
      dotData: FlDotData(
        getDotPainter: (spot, d, data, i) => FlDotCirclePainter(radius: 4, color: warmdBlue, strokeColor: Colors.transparent),
      ),
      isStrokeCapRound: true,
    );
  }
}
