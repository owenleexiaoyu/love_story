import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class LoveTimeline extends StatelessWidget {
  const LoveTimeline({Key? key}) : super(key: key);


  final datas = const [
    TimelineData("我们相识", "2019/11/30"),
    TimelineData("我们在一起了", "2020/05/10"),
    TimelineData("我们第一次见面", "2020/09/10"),
    TimelineData("我们一周年啦", "2021/05/10"),
    TimelineData("我们一起去青岛旅行", "2021/06/11"),
    TimelineData("我们在一起过虎年", "2022/01/31"),
    TimelineData("我们两周年啦", "2022/05/10"),
    TimelineData("未来很长，我们一起走", "Forever", reached: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.pinkAccent,
      padding: EdgeInsets.only(top: 100, left: 50, right: 50),
      child: ListView.builder(
        itemCount: datas.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return TimelineItem(data: datas[index], isFirst: index == 0, isLast: index == datas.length - 1,);
        },
      ),
    );
  }
}

class TimelineItem extends StatelessWidget {

  final TimelineData data;
  final bool isFirst;
  final bool isLast;
  const TimelineItem({
    Key? key,
    required this.data,
    required this.isFirst,
    required this.isLast
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TimelineTile(
        axis: TimelineAxis.horizontal,
        alignment: TimelineAlign.center,
        isFirst: isFirst,
        isLast: isLast,
        startChild: Container(
          width: 200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
          decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  color: Colors.white24,
                )
              ]),
          child: Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        endChild: Container(
          height: 40,
          margin: EdgeInsets.all(20),
          child: Text(
            data.time,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        indicatorStyle: IndicatorStyle(
          width: 40,
          height: 40,
          indicator: _Indicator(reached: data.reached),
          drawGap: true,
        ),
        beforeLineStyle: LineStyle(
          color: Colors.white.withOpacity(0.2),
        ),

      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  const _Indicator({Key? key, required this.reached}) : super(key: key);

  final bool reached;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.white.withOpacity(0.2),
            width: 4,
          ),
        ),
      ),
      child: Center(
        child: reached ? Icon(
          Icons.check,
          color: Colors.greenAccent,
        ) : SizedBox.shrink(),
      ),
    );
  }
}

class TimelineData {

  final String title;
  final String time;
  final bool reached;
  const TimelineData(this.title, this.time, {this.reached = true});
}