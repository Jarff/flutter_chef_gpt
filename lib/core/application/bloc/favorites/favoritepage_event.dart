import 'package:chef_gpt/core/infrastructure/repositories/favorite_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favoritepage_event.freezed.dart';

@freezed
class FavoritepageEvent with _$FavoritepageEvent {
  const factory FavoritepageEvent.fetch() = _FetchFavorites;
  const factory FavoritepageEvent.refresh() = _RefreshFavorites;
}
