import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:goal_tracking_app/objects.dart';
import 'package:goal_tracking_app/widgets/goal_item.dart';

import '../widgets/greeting.dart';

class HomePageHeader extends SliverPersistentHeaderDelegate {
  HomePageHeader({this.minExtent = 0.0, required this.maxExtent});

  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Greeting(name: 'Name');
  }

  double titleOpacity(double shrinkOffset) {
    // simple formula: fade out text as soon as shrinkOffset > 0
    return 1.0 - max(0.0, shrinkOffset) / maxExtent;
    // more complex formula: starts fading out text when shrinkOffset > minExtent
    //return 1.0 - max(0.0, (shrinkOffset - minExtent)) / (maxExtent - minExtent);
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class HomeLayout extends StatelessWidget {
  final List<Goal> goals = [
    new Goal(name: 'something and other some thing'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
    new Goal(name: 'something'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverPersistentHeader(
              pinned: false,
              floating: false,
              delegate: HomePageHeader(
                minExtent: 100.0,
                maxExtent: 200.0,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverStaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              children: goals
                  .mapIndexed(
                    (index, goal) => new GoalItem(name: goal.name),
                  )
                  .toList(),
              staggeredTiles: goals
                  .mapIndexed((index, goal) =>
                      new StaggeredTile.count(2, index.isEven ? 2 : 1))
                  .toList(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              height: 80,
              padding: EdgeInsets.only(bottom: 25),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Lorem ipsum dolor sit amet.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
