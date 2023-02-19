import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //TODO: Repository, Datasource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    final List<VideoPost> newVideos = videoPosts.map((videoJson) {
      return LocalVideoModel.fromJson(videoJson).toVideoPostEntity();
    }).toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
