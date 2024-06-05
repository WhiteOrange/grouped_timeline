import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class TimeLine extends StatelessWidget {
  /// TimeLineInfo model for each timeline
  List<TimeLineInfo> timeLineInfo;
  TimeLine({super.key, required this.timeLineInfo});

  @override
  Widget build(BuildContext context) {
    /// for getting screen full width and screen full height
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      /// GroupedListView for getting grouped timeLines
      body: GroupedListView<TimeLineInfo, String>(
        elements: timeLineInfo,
        shrinkWrap: true,
        groupBy: (element) => element.date ?? "",
        groupComparator: (value1, value2) => value2.compareTo(value1),
        // itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: false,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Center(child: Text(value)),
        ),
        indexedItemBuilder: (c, element, i) {
          /// main indexed builder
          return Row(
            children: [
              SizedBox(
                width: screenWidth * 0.48,
                child: Row(
                  children: [
                    i.isOdd
                        ? SizedBox(width: screenWidth * 0.24)
                        : SizedBox(
                            height: screenHeight * 0.082,
                            width: screenWidth * 0.20 - 4,
                            child: ListView.builder(
                              /// lefts's side content
                              shrinkWrap: true,
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: element.images?.length ?? 0,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: Image.network(
                                    element.images?[index] ?? "",
                                    height: screenHeight * 0.082,
                                    width: screenWidth * 0.15,
                                  ),
                                );
                              },
                            ),
                          ),

                    /// lefts's side content
                    i.isOdd
                        ? SizedBox(width: screenWidth * 0.24)
                        : Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: screenWidth * 0.28 - 10,
                            child: Text(
                              element.title ?? "",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                  ],
                ),
              ),

              /// dot bar for middle
              SizedBox(
                width: screenWidth * 0.03,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 9,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, dotted) {
                      return Column(
                        children: [
                          dotted == 4
                              ? Container(
                                  height: 12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color(0xffFF8648),
                                  ),
                                )
                              : timeLineInfo.length - 1 == i && dotted > 4
                                  ? const SizedBox(height: 12)
                                  : Container(
                                      margin: const EdgeInsets.all(3),
                                      height: 6,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xffFFD0C1),
                                      ),
                                    ),
                          const SizedBox(height: 1),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.49,
                child: Row(
                  children: [
                    /// right's side content
                    i.isEven
                        ? SizedBox(width: screenWidth * 0.24)
                        : Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: screenWidth * 0.29 - 10,
                            child: Text(
                              element.title ?? "",
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                    i.isEven

                        /// right's side content
                        ? SizedBox(width: screenWidth * 0.24)
                        : SizedBox(
                            height: screenHeight * 0.082,
                            width: screenWidth * 0.20 - 4,

                            /// image content for right view
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: element.images?.length ?? 0,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  child: Image.network(
                                    element.images?[index] ?? "",
                                    height: screenHeight * 0.082,
                                    width: screenWidth * 0.15,
                                  ),
                                );
                              },
                            ),
                          ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TimeLineInfo {
  String? title;
  String? date;
  List<String>? images;

  TimeLineInfo({this.title, this.date, this.images});

  TimeLineInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    date = json['Date'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['Date'] = date;
    data['images'] = images;
    return data;
  }
}
