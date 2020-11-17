import 'package:flutter/material.dart';
import 'package:the_basics_web/datamodels/episode_item_model.dart';
import 'package:the_basics_web/locator.dart';
import 'package:the_basics_web/services/api.dart';

class EpisodesViewModel extends ChangeNotifier {
  final _api = locator<Api>();

  List<EpisodeItemModel> _episodes;
  List<EpisodeItemModel> get episodes => _episodes;

  Future getEpisodes() async {
    var episodesResults = await _api.getEpisodes();

    if (episodesResults is String) {
    } else {
      _episodes = episodesResults;
    }

    notifyListeners();
  }
}
