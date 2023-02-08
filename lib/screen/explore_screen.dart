import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);

  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ExploreData>(
        future: mockService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final todayRecipes = snapshot.data?.todayRecipes ?? [];
              final friendPost = snapshot.data?.friendPosts ?? [];
              return ListView(
                children: [
                  TodayRecipeListView(recipes: todayRecipes,),
                  SizedBox(height: 32),
                  FriendPostListView(posts: friendPost),
                ],
              );
            } else {
              return Text('please add some data!!');
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
